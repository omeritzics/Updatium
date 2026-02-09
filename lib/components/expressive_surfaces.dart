import 'package:flutter/material.dart';

/// Expressive Surface - Modern surface treatments with Material You effects
class ExpressiveSurface extends StatelessWidget {
  final Widget child;
  final Color? color;
  final double? elevation;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;
  final bool enableGradient;
  final bool enableNoise;
  final BlendMode? blendMode;

  const ExpressiveSurface({
    super.key,
    required this.child,
    this.color,
    this.elevation,
    this.borderRadius,
    this.padding,
    this.enableGradient = true,
    this.enableNoise = false,
    this.blendMode,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final surfaceColor = color ?? colorScheme.surface;

    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(16),
        gradient: enableGradient
            ? LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  surfaceColor,
                  surfaceColor.withOpacity(0.95),
                  surfaceColor.withOpacity(0.9),
                ],
              )
            : null,
        boxShadow: [
          if (elevation != null && elevation! > 0)
            BoxShadow(
              color: colorScheme.shadow.withOpacity(0.1),
              blurRadius: elevation! * 2,
              offset: Offset(0, elevation!),
            ),
        ],
      ),
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: borderRadius ?? BorderRadius.circular(16),
          color: enableGradient ? null : surfaceColor.withOpacity(0.9),
        ),
        child: child,
      ),
    );
  }
}

/// Expressive Container - Enhanced container with modern styling
class ExpressiveContainer extends StatefulWidget {
  final Widget child;
  final VoidCallback? onTap;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;
  final BoxBorder? border;
  final List<BoxShadow>? boxShadow;
  final Gradient? gradient;
  final bool enableAnimation;
  final Duration animationDuration;

  const ExpressiveContainer({
    super.key,
    required this.child,
    this.onTap,
    this.backgroundColor,
    this.foregroundColor,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.borderRadius,
    this.border,
    this.boxShadow,
    this.gradient,
    this.enableAnimation = true,
    this.animationDuration = const Duration(milliseconds: 200),
  });

  @override
  State<ExpressiveContainer> createState() => _ExpressiveContainerState();
}

class _ExpressiveContainerState extends State<ExpressiveContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.95).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _opacityAnimation = Tween<double>(begin: 1.0, end: 0.8).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    if (widget.enableAnimation) {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTapDown(TapDownDetails details) {
    if (widget.enableAnimation) {
      _controller.forward();
    }
  }

  void _handleTapUp(TapUpDetails details) {
    if (widget.enableAnimation) {
      _controller.reverse();
    }
    widget.onTap?.call();
  }

  void _handleTapCancel() {
    if (widget.enableAnimation) {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return GestureDetector(
          onTapDown: _handleTapDown,
          onTapUp: _handleTapUp,
          onTapCancel: _handleTapCancel,
          child: AnimatedContainer(
            duration: widget.animationDuration,
            width: widget.width,
            height: widget.height,
            margin: widget.margin,
            padding: widget.padding,
            transform: Matrix4.identity()..scale(_scaleAnimation.value),
            decoration: BoxDecoration(
              color: widget.backgroundColor ?? colorScheme.surface,
              foregroundColor: widget.foregroundColor,
              borderRadius: widget.borderRadius ?? BorderRadius.circular(12),
              border: widget.border,
              gradient: widget.gradient ??
                  LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      (widget.backgroundColor ?? colorScheme.surface),
                      (widget.backgroundColor ?? colorScheme.surface).withOpacity(0.8),
                    ],
                  ),
              boxShadow: widget.boxShadow ??
                  [
                    BoxShadow(
                      color: colorScheme.shadow.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
            ),
            child: Opacity(
              opacity: _opacityAnimation.value,
              child: widget.child,
            ),
          ),
        );
      },
    );
  }
}

/// Expressive Badge - Modern badge component with animations
class ExpressiveBadge extends StatefulWidget {
  final Widget child;
  final String? label;
  final Color? color;
  final Color? textColor;
  final bool showLabel;
  final EdgeInsetsGeometry? padding;
  final bool enableAnimation;

  const ExpressiveBadge({
    super.key,
    required this.child,
    this.label,
    this.color,
    this.textColor,
    this.showLabel = true,
    this.padding,
    this.enableAnimation = true,
  });

  @override
  State<ExpressiveBadge> createState() => _ExpressiveBadgeState();
}

class _ExpressiveBadgeState extends State<ExpressiveBadge>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
    );

    _rotationAnimation = Tween<double>(begin: -0.1, end: 0.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
    );

    if (widget.enableAnimation) {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final badgeColor = widget.color ?? colorScheme.primary;
    final badgeTextColor = widget.textColor ?? colorScheme.onPrimary;

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: Transform.rotate(
            angle: _rotationAnimation.value,
            child: Container(
              padding: widget.padding ?? const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: badgeColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: badgeColor.withOpacity(0.3),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  widget.child,
                  if (widget.showLabel && widget.label != null) ...[
                    const SizedBox(width: 4),
                    Text(
                      widget.label!,
                      style: TextStyle(
                        color: badgeTextColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
