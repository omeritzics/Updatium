import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:updatium/models/enhanced_app.dart';
import 'package:updatium/providers/apps_provider.dart';
import 'package:updatium/services/unified_icon_service.dart';

/// Enhanced App Icon Widget with unified service integration
///
/// Features:
/// - Unified icon service integration
/// - Advanced loading states
/// - Performance monitoring
/// - Error handling with retry
/// - Memory-efficient caching
/// - Configurable appearance
class EnhancedAppIcon extends StatefulWidget {
  final EnhancedApp app;
  final double size;
  final IconRequestConfig config;
  final bool showInstalledIndicator;
  final bool showLoadingIndicator;
  final bool enablePerformanceOverlay;
  final VoidCallback? onTap;
  final VoidCallback? onDoubleTap;
  final VoidCallback? onLongPress;
  final Widget? customPlaceholder;
  final Widget? customErrorWidget;
  final BorderRadius? borderRadius;
  final BoxBorder? border;
  final Color? backgroundColor;

  const EnhancedAppIcon({
    super.key,
    required this.app,
    this.size = 48.0,
    this.config = IconRequestConfig.fast,
    this.showInstalledIndicator = true,
    this.showLoadingIndicator = true,
    this.enablePerformanceOverlay = false,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
    this.customPlaceholder,
    this.customErrorWidget,
    this.borderRadius,
    this.border,
    this.backgroundColor,
  });

  @override
  State<EnhancedAppIcon> createState() => _EnhancedAppIconState();
}

class _EnhancedAppIconState extends State<EnhancedAppIcon>
    with TickerProviderStateMixin {
  late AnimationController _shimmerController;
  late AnimationController _pulseController;
  late Animation<double> _shimmerAnimation;
  late Animation<double> _pulseAnimation;

  IconResult? _lastResult;
  bool _isLoading = false;
  String? _lastAppId;
  String? _lastRemoteUrl;
  DateTime? _loadStartTime;
  int _retryCount = 0;

  @override
  void initState() {
    super.initState();
    _initializeAnimations();
    _loadIcon();
  }

  @override
  void didUpdateWidget(EnhancedAppIcon oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Check if we need to reload
    final appIdChanged = oldWidget.app.id != widget.app.id;
    final urlChanged = oldWidget.app.remoteIconUrl != widget.app.remoteIconUrl;
    final forceRefresh = widget.config.forceRefresh;

    if (appIdChanged || urlChanged || forceRefresh) {
      _loadIcon();
    }
  }

  @override
  void dispose() {
    _shimmerController.dispose();
    _pulseController.dispose();
    super.dispose();
  }

  void _initializeAnimations() {
    _shimmerController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    _shimmerAnimation = Tween<double>(begin: -2.0, end: 2.0).animate(
      CurvedAnimation(parent: _shimmerController, curve: Curves.easeInOut),
    );

    _pulseController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _pulseAnimation = Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );
  }

  Future<void> _loadIcon() async {
    // Skip if already loading the same app
    if (_isLoading &&
        _lastAppId == widget.app.id &&
        _lastRemoteUrl == widget.app.remoteIconUrl) {
      return;
    }

    setState(() {
      _isLoading = true;
      _lastAppId = widget.app.id;
      _lastRemoteUrl = widget.app.remoteIconUrl;
      _loadStartTime = DateTime.now();
      widget.app.setIconLoading();

      if (widget.showLoadingIndicator) {
        _shimmerController.repeat();
        _pulseController.repeat(reverse: true);
      }
    });

    try {
      final result = await UnifiedIconService.instance.getIcon(
        widget.app.id,
        widget.app.bestIconUrl,
        forceRefresh: widget.config.forceRefresh,
        fallbackIcon: _getFallbackIcon(),
        maxSize: widget.config.maxSize,
        preferredFormat: widget.config.preferredFormat,
      );

      if (mounted) {
        setState(() {
          _lastResult = result;
          _isLoading = false;
          _retryCount = 0;
          _shimmerController.stop();
          _pulseController.stop();

          if (result.isSuccess && result.data != null) {
            widget.app.setIconLoaded(result.data!);
          } else {
            widget.app.setIconError(result.error ?? 'No icon data available');
          }
        });

        _logPerformance(result);
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
          _shimmerController.stop();
          _pulseController.stop();
          widget.app.setIconError(e.toString());
        });
      }
    }
  }

  void _retryLoad() {
    _retryCount++;
    _loadIcon();
  }

  void _logPerformance(IconResult result) {
    if (_loadStartTime != null && widget.enablePerformanceOverlay) {
      final loadTime = DateTime.now().difference(_loadStartTime!);
      debugPrint(
        'Icon load performance for ${widget.app.name}: '
        '${loadTime.inMilliseconds}ms, '
        'Source: ${result.source}, '
        'Size: ${result.data?.length ?? 0} bytes, '
        'Retries: $_retryCount',
      );
    }
  }

  Uint8List? _getFallbackIcon() {
    // Try to get from apps provider as fallback
    try {
      final appsProvider = Provider.of<AppsProvider>(context, listen: false);
      return appsProvider.apps[widget.app.id]?.icon;
    } catch (e) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget iconWidget;

    if (_isLoading) {
      iconWidget = _buildLoadingWidget();
    } else if (_lastResult?.isSuccess == true && _lastResult?.data != null) {
      iconWidget = _buildIconWidget(_lastResult!.data!);
    } else {
      iconWidget = _buildErrorWidget();
    }

    return GestureDetector(
      onTap: widget.onTap,
      onDoubleTap: widget.onDoubleTap,
      onLongPress: widget.onLongPress,
      child: SizedBox(
        width: widget.size,
        height: widget.size,
        child: Stack(
          children: [
            iconWidget,
            if (widget.enablePerformanceOverlay && _lastResult != null)
              _buildPerformanceOverlay(),
          ],
        ),
      ),
    );
  }

  Widget _buildLoadingWidget() {
    if (widget.customPlaceholder != null) {
      return widget.customPlaceholder!;
    }

    final borderRadius =
        widget.borderRadius ?? BorderRadius.circular(widget.size * 0.125);

    return Stack(
      children: [
        // Base placeholder
        Container(
          width: widget.size,
          height: widget.size,
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            color:
                widget.backgroundColor ??
                Theme.of(context).colorScheme.surfaceContainerHighest,
            border: widget.border,
          ),
          child: Center(
            child: Icon(
              Icons.apps,
              size: widget.size * 0.5,
              color: Theme.of(
                context,
              ).colorScheme.onSurfaceVariant.withOpacity(0.5),
            ),
          ),
        ),

        // Shimmer effect
        if (widget.showLoadingIndicator)
          ClipRRect(
            borderRadius: borderRadius,
            child: AnimatedBuilder(
              animation: _shimmerAnimation,
              builder: (context, child) {
                return ShaderMask(
                  shaderCallback: (bounds) {
                    return LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.white.withOpacity(0.3),
                        Colors.transparent,
                      ],
                      stops: const [0.0, 0.5, 1.0],
                      begin: Alignment(-1.0 + _shimmerAnimation.value, 0.0),
                      end: Alignment(1.0 + _shimmerAnimation.value, 0.0),
                    ).createShader(bounds);
                  },
                  child: Container(
                    width: widget.size,
                    height: widget.size,
                    color: Colors.white,
                  ),
                );
              },
            ),
          ),

        // Pulse effect for loading indicator
        if (widget.showLoadingIndicator)
          Positioned.fill(
            child: AnimatedBuilder(
              animation: _pulseAnimation,
              builder: (context, child) {
                return Transform.scale(
                  scale: _pulseAnimation.value,
                  child: Container(
                    width: widget.size,
                    height: widget.size,
                    decoration: BoxDecoration(
                      borderRadius: borderRadius,
                      border: Border.all(
                        color: Theme.of(
                          context,
                        ).colorScheme.primary.withOpacity(0.5),
                        width: 2.0,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
      ],
    );
  }

  Widget _buildErrorWidget() {
    if (widget.customErrorWidget != null) {
      return widget.customErrorWidget!;
    }

    final borderRadius =
        widget.borderRadius ?? BorderRadius.circular(widget.size * 0.125);

    return Stack(
      children: [
        // Error placeholder
        Container(
          width: widget.size,
          height: widget.size,
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            color: Theme.of(context).colorScheme.errorContainer,
            border: widget.border,
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
                borderRadius: borderRadius,
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

  Widget _buildIconWidget(Uint8List iconData) {
    final borderRadius =
        widget.borderRadius ?? BorderRadius.circular(widget.size * 0.125);

    return Stack(
      children: [
        // Main icon
        ClipRRect(
          borderRadius: borderRadius,
          child: Image.memory(
            iconData,
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
                    borderRadius: borderRadius,
                    border: Border.all(color: Colors.green, width: 2.0),
                  ),
                );
              },
            ),
          ),
      ],
    );
  }

  Widget _buildPerformanceOverlay() {
    if (!widget.enablePerformanceOverlay || _lastResult == null) {
      return const SizedBox.shrink();
    }

    final loadTime = _loadStartTime != null
        ? DateTime.now().difference(_loadStartTime!).inMilliseconds
        : 0;

    return Positioned(
      top: 2,
      right: 2,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.7),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '${loadTime}ms',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 8,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              _lastResult!.source.name,
              style: const TextStyle(color: Colors.white, fontSize: 8),
            ),
            if (_retryCount > 0)
              Text(
                'R$_retryCount',
                style: const TextStyle(
                  color: Colors.orange,
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

/// Simplified version for common use cases
class EnhancedAppIconSimple extends StatelessWidget {
  final EnhancedApp app;
  final double size;
  final VoidCallback? onTap;
  final VoidCallback? onDoubleTap;
  final VoidCallback? onLongPress;

  const EnhancedAppIconSimple({
    super.key,
    required this.app,
    this.size = 48.0,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return EnhancedAppIcon(
      app: app,
      size: size,
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      config: IconRequestConfig.fast,
      showLoadingIndicator: true,
      showInstalledIndicator: true,
      enablePerformanceOverlay: false,
    );
  }
}

/// Grid-optimized version
class EnhancedAppIconGrid extends StatelessWidget {
  final EnhancedApp app;
  final double size;
  final VoidCallback? onTap;
  final VoidCallback? onDoubleTap;
  final VoidCallback? onLongPress;

  const EnhancedAppIconGrid({
    super.key,
    required this.app,
    this.size = 64.0,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return EnhancedAppIcon(
      app: app,
      size: size,
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      config: IconRequestConfig.highQuality,
      showLoadingIndicator: true,
      showInstalledIndicator: true,
      enablePerformanceOverlay: false,
    );
  }
}

/// High-performance version for lists
class EnhancedAppIconList extends StatelessWidget {
  final EnhancedApp app;
  final double size;
  final VoidCallback? onTap;
  final VoidCallback? onDoubleTap;
  final VoidCallback? onLongPress;

  const EnhancedAppIconList({
    super.key,
    required this.app,
    this.size = 32.0,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return EnhancedAppIcon(
      app: app,
      size: size,
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      config: const IconRequestConfig(
        maxSize: 64,
        timeout: Duration(seconds: 10),
        retryCount: 1,
      ),
      showLoadingIndicator: false, // Disable shimmer for lists
      showInstalledIndicator: true,
      enablePerformanceOverlay: false,
    );
  }
}
