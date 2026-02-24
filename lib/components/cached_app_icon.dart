import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/providers/source_provider.dart';

/// Widget that displays app icons with Material Expressive design
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
  Uint8List? _iconData;
  bool _isLoading = false;
  bool _hasError = false;
  String? _lastAppId;
  String? _lastRemoteUrl;
  bool _isHovered = false;

  @override
  void initState() {
    super.initState();

    _shimmerController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    _shimmerAnimation = Tween<double>(begin: -1.0, end: 1.0).animate(
      CurvedAnimation(parent: _shimmerController, curve: Curves.easeInOut),
    );

    _scaleController = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.95).animate(
      CurvedAnimation(parent: _scaleController, curve: Curves.easeOutCubic),
    );

    _loadIcon();
  }

  @override
  void dispose() {
    _shimmerController.dispose();
    _scaleController.dispose();
    super.dispose();
  }

  void _handleTapDown(TapDownDetails details) {
    _scaleController.forward();
  }

  void _handleTapUp(TapUpDetails details) {
    _scaleController.reverse();
    widget.onTap?.call();
  }

  void _handleTapCancel() {
    _scaleController.reverse();
  }

  void _handleHover(bool hovering) {
    setState(() {
      _isHovered = hovering;
    });
  }

  Future<void> _loadIcon() async {
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
          animation: Listenable.merge([_scaleController]),
          builder: (context, child) {
            return Transform.scale(
              scale: _scaleAnimation.value,
              child: Container(
                width: widget.size,
                height: widget.size,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(widget.size * 0.125),
                  boxShadow: _isHovered
                      ? [
                          BoxShadow(
                            color: Theme.of(
                              context,
                            ).colorScheme.primary.withValues(alpha: 0.3),
                            blurRadius: 20,
                            offset: const Offset(0, 8),
                          ),
                        ]
                      : [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                ),
                child: iconWidget,
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
        Container(
          width: widget.size,
          height: widget.size,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.size * 0.125),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Theme.of(context).colorScheme.surface.withValues(alpha: 0.1),
                Theme.of(context).colorScheme.surfaceContainer,
              ],
            ),
          ),
          child: Center(
            child: AnimatedBuilder(
              animation: _shimmerController,
              builder: (context, child) {
                return Transform.rotate(
                  angle: _shimmerAnimation.value * 2 * 3.14159,
                  child: Icon(
                    Icons.apps,
                    size: widget.size * 0.5,
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
                  ),
                );
              },
            ),
          ),
        ),
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

  Widget _buildErrorWidget() {
    return Stack(
      children: [
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
