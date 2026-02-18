import 'package:flutter/material.dart';

/// Material Design Expressive Refresh Indicator with smooth animations
class ExpressiveRefreshIndicator extends StatefulWidget {
  final Widget child;
  final Future<void> Function()? onRefresh;
  final Color? color;
  final double displacement;
  final bool enabled;
  final Duration duration;

  const ExpressiveRefreshIndicator({
    super.key,
    required this.child,
    this.onRefresh,
    this.color,
    this.displacement = 40.0,
    this.enabled = true,
    this.duration = const Duration(milliseconds: 300),
  });

  @override
  State<ExpressiveRefreshIndicator> createState() => _ExpressiveRefreshIndicatorState();
}

class _ExpressiveRefreshIndicatorState extends State<ExpressiveRefreshIndicator>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _rotationAnimation;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;
  late bool _isRefreshing = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: widget.duration,
      vsync: this,
    );

    _rotationAnimation = Tween<double>(
      begin: 0.0,
      end: 0.5,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.8,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    _opacityAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> _handleRefresh() async {
    if (widget.onRefresh != null && widget.enabled && !_isRefreshing) {
      setState(() => _isRefreshing = true);
      
      // Start animations
      _animationController.repeat();
      
      try {
        await widget.onRefresh!();
      } finally {
        if (mounted) {
          // Stop animations
          _animationController.stop();
          _animationController.reset();
          setState(() => _isRefreshing = false);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    
    return RefreshIndicator(
      displacement: widget.displacement,
      color: widget.color ?? colorScheme.primary,
      backgroundColor: colorScheme.surface,
      strokeWidth: 2.5,
      onRefresh: _handleRefresh,
      child: widget.child,
    );
  }
}
