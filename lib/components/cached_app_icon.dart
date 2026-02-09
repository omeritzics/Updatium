import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/source_provider.dart';
import 'package:updatium/utils/expressive_motion.dart';

/// Widget that displays app icons with caching and loading states
class CachedAppIcon extends StatefulWidget {
  final App app;
  final double size;
  final bool showInstalledIndicator;
  final VoidCallback? onTap;
  final VoidCallback? onDoubleTap;
  final VoidCallback? onLongPress;
  final Widget? placeholder;
  final bool enableShimmer;

  const CachedAppIcon({
    super.key,
    required this.app,
    this.size = 48.0,
    this.showInstalledIndicator = true,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
    this.placeholder,
    this.enableShimmer = true,
  });

  @override
  State<CachedAppIcon> createState() => _CachedAppIconState();
}

class _CachedAppIconState extends State<CachedAppIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _shimmerController;
  late Animation<double> _shimmerAnimation;
  late AnimationController _scaleController;
  late Animation<double> _scaleAnimation;
  late AnimationController _rotationController;
  late Animation<double> _rotationAnimation;

  Uint8List? _iconData;
  bool _isLoading = false;
  bool _hasError = false;
  String? _lastAppId;
  String? _lastRemoteUrl;
  bool _isHovered = false;
  bool _isPressed = false;

  @override
  void initState() {
    super.initState();
    
    // Shimmer animation for loading state
    _shimmerController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    _shimmerAnimation = Tween<double>(begin: -2.0, end: 2.0).animate(
      CurvedAnimation(parent: _shimmerController, curve: ExpressiveMotion.standard),
    );
    
    // Scale animation for interactions
    _scaleController = AnimationController(
      duration: ExpressiveMotion.durationShort,
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.9).animate(
      CurvedAnimation(parent: _scaleController, curve: ExpressiveMotion.emphasizedAccelerate),
    );
    
    // Rotation animation for loading/error states
    _rotationController = AnimationController(
      duration: ExpressiveMotion.durationLong,
      vsync: this,
    );
    _rotationAnimation = Tween<double>(begin: 0.0, end: 0.1).animate(
      CurvedAnimation(parent: _rotationController, curve: ExpressiveMotion.standard),
    );

    // Start loading the icon
    _loadIcon();
  }

  @override
  void didUpdateWidget(CachedAppIcon oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Reload icon if app changed or remote URL changed
    if (oldWidget.app.id != widget.app.id ||
        oldWidget.app.remoteIconUrl != widget.app.remoteIconUrl) {
      _loadIcon();
    }
  }

  @override
  void dispose() {
    _shimmerController.dispose();
    _scaleController.dispose();
    _rotationController.dispose();
    super.dispose();
  }

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _isPressed = true;
    });
    _scaleController.forward();
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _isPressed = false;
    });
    _scaleController.reverse();
    widget.onTap?.call();
  }

  void _handleTapCancel() {
    setState(() {
      _isPressed = false;
    });
    _scaleController.reverse();
  }

  void _handleHover(bool hovering) {
    setState(() {
      _isHovered = hovering;
    });
  }

  Future<void> _loadIcon() async {
    // Skip if already loading this same app
    if (_isLoading &&
        _lastAppId == widget.app.id &&
        _lastRemoteUrl == widget.app.remoteIconUrl) {
      return;
    }

    setState(() {
      _isLoading = true;
      _hasError = false;
      _iconData = null;
      _lastAppId = widget.app.id;
      _lastRemoteUrl = widget.app.remoteIconUrl;

      if (widget.enableShimmer) {
        _shimmerController.repeat();
      }
    });

    try {
      final appsProvider = Provider.of<AppsProvider>(context, listen: false);

      // First, try to get the existing icon from AppsProvider
      final existingIcon = appsProvider.apps[widget.app.id]?.icon;

      if (existingIcon != null) {
        if (mounted) {
          setState(() {
            _iconData = existingIcon;
            _isLoading = false;
            _shimmerController.stop();
          });
        }
        return;
      }

      // If no existing icon, try to get from cache or fetch
      final iconData = await appsProvider.getIcon(
        widget.app.id,
        widget.app.remoteIconUrl,
        forceRefresh: false,
      );

      if (mounted) {
        setState(() {
          _iconData = iconData;
          _isLoading = false;
          _hasError = iconData == null;
          _shimmerController.stop();
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
          _hasError = true;
          _shimmerController.stop();
        });
      }
    }
  }

  void _retryLoad() {
    _loadIcon();
  }

  @override
  Widget build(BuildContext context) {
    Widget iconWidget;

    if (_isLoading) {
      iconWidget = _buildLoadingWidget();
    } else if (_hasError || _iconData == null) {
      iconWidget = _buildErrorWidget();
    } else {
      iconWidget = _buildIconWidget();
    }

    return MouseRegion(
      onEnter: (_) => _handleHover(true),
      onExit: (_) => _handleHover(false),
      child: GestureDetector(
        onTapDown: widget.onTap != null ? _handleTapDown : null,
        onTapUp: widget.onTap != null ? _handleTapUp : null,
        onTapCancel: widget.onTap != null ? _handleTapCancel : null,
        onDoubleTap: widget.onDoubleTap,
        onLongPress: widget.onLongPress,
        child: AnimatedBuilder(
          animation: Listenable.merge([_scaleController, _rotationController]),
          builder: (context, child) {
            return Transform.scale(
              scale: _scaleAnimation.value,
              child: Transform.rotate(
                angle: _rotationAnimation.value,
                child: AnimatedContainer(
                  duration: ExpressiveMotion.durationShort,
                  transform: Matrix4.identity()
                    ..translate(
                      0.0,
                      _isHovered ? -4.0 : 0.0,
                    ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(widget.size * 0.2),
                    boxShadow: _isHovered
                        ? [
                            BoxShadow(
                              color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
                              blurRadius: 20,
                              offset: const Offset(0, 8),
                            ),
                          ]
                        : [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                  ),
                  child: SizedBox(
                    width: widget.size,
                    height: widget.size,
                    child: iconWidget,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildLoadingWidget() {
    if (widget.placeholder != null) {
      return widget.placeholder!;
    }

    return Stack(
      children: [
        // Base placeholder with expressive design
        Container(
          width: widget.size,
          height: widget.size,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.size * 0.2),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Theme.of(context).colorScheme.surfaceContainerHighest,
                Theme.of(context).colorScheme.surfaceContainer,
              ],
            ),
          ),
          child: Center(
            child: AnimatedBuilder(
              animation: _rotationController,
              builder: (context, child) {
                return Transform.rotate(
                  angle: _rotationAnimation.value * 2 * 3.14159,
                  child: Icon(
                    Icons.apps,
                    size: widget.size * 0.5,
                    color: Theme.of(context).colorScheme.onSurfaceVariant.withOpacity(0.6),
                  ),
                );
              },
            ),
          ),
        ),

        // Expressive shimmer effect
        if (widget.enableShimmer)
          AnimatedBuilder(
            animation: _shimmerAnimation,
            builder: (context, child) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(widget.size * 0.2),
                child: Transform.translate(
                  offset: Offset(_shimmerAnimation.value * widget.size * 0.5, 0),
                  child: Container(
                    width: widget.size * 0.3,
                    height: widget.size,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.transparent,
                          Colors.white.withOpacity(0.3),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
      ],
    );
  }

  Widget _buildErrorWidget() {
    return Stack(
      children: [
        // Error placeholder
        Container(
          width: widget.size,
          height: widget.size,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.size * 0.125),
            color: Theme.of(context).colorScheme.errorContainer,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.broken_image,
                size: widget.size * 0.4,
                color: Theme.of(context).colorScheme.error,
              ),
              if (widget.size > 32) SizedBox(height: widget.size * 0.05),
              if (widget.size > 32)
                Text(
                  '!',
                  style: TextStyle(
                    fontSize: widget.size * 0.2,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
            ],
          ),
        ),

        // Retry button for larger icons
        if (widget.size > 40)
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(widget.size * 0.125),
                onTap: _retryLoad,
                child: Container(
                  width: widget.size,
                  height: widget.size,
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.refresh,
                    size: widget.size * 0.3,
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildIconWidget() {
    return Stack(
      children: [
        // Main icon
        ClipRRect(
          borderRadius: BorderRadius.circular(widget.size * 0.125),
          child: Image.memory(
            _iconData!,
            width: widget.size,
            height: widget.size,
            gaplessPlayback: true,
            fit: BoxFit.cover,
            opacity: AlwaysStoppedAnimation(
              widget.showInstalledIndicator &&
                      Provider.of<AppsProvider>(
                            context,
                            listen: false,
                          ).apps[widget.app.id]?.installedInfo ==
                          null
                  ? 0.6
                  : 1.0,
            ),
            errorBuilder: (context, error, stackTrace) {
              return _buildErrorWidget();
            },
          ),
        ),

        // Installed indicator
        if (widget.showInstalledIndicator)
          Positioned.fill(
            child: Consumer<AppsProvider>(
              builder: (context, appsProvider, child) {
                final isInstalled =
                    appsProvider.apps[widget.app.id]?.installedInfo != null;
                if (!isInstalled) return const SizedBox.shrink();

                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(widget.size * 0.125),
                    border: Border.all(color: Colors.green, width: 2.0),
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}

/// Simple version of CachedAppIcon for grid layouts
class CachedAppIconSimple extends StatelessWidget {
  final App app;
  final double size;
  final VoidCallback? onTap;
  final VoidCallback? onDoubleTap;
  final VoidCallback? onLongPress;

  const CachedAppIconSimple({
    super.key,
    required this.app,
    this.size = 48.0,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return CachedAppIcon(
      app: app,
      size: size,
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      enableShimmer: true,
      showInstalledIndicator: true,
    );
  }
}

/// Grid version optimized for app catalogues
class CachedAppIconGrid extends StatelessWidget {
  final App app;
  final double size;
  final VoidCallback? onTap;
  final VoidCallback? onDoubleTap;
  final VoidCallback? onLongPress;

  const CachedAppIconGrid({
    super.key,
    required this.app,
    this.size = 64.0,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return CachedAppIcon(
      app: app,
      size: size,
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      enableShimmer: true,
      showInstalledIndicator: true,
    );
  }
}
