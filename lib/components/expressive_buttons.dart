import 'package:flutter/material.dart';

/// Expressive Button - Modern Material Design 3 Expressive button
/// Features: smooth animations, ripple effects, and enhanced interactions
class ExpressiveButton extends StatefulWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? overlayColor;
  final double? elevation;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;
  final bool enableAnimation;
  final bool enableRipple;
  final Duration animationDuration;
  final ButtonStyle? style;

  const ExpressiveButton({
    super.key,
    required this.child,
    this.onPressed,
    this.onLongPress,
    this.backgroundColor,
    this.foregroundColor,
    this.overlayColor,
    this.elevation,
    this.borderRadius,
    this.padding,
    this.enableAnimation = true,
    this.enableRipple = true,
    this.animationDuration = const Duration(milliseconds: 200),
    this.style,
  });

  @override
  State<ExpressiveButton> createState() => _ExpressiveButtonState();
}

class _ExpressiveButtonState extends State<ExpressiveButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _elevationAnimation;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.95,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _elevationAnimation = Tween<double>(
      begin: widget.elevation ?? 2.0,
      end: (widget.elevation ?? 2.0) + 4.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final baseColor = widget.backgroundColor ?? colorScheme.primary;

    _colorAnimation = ColorTween(
      begin: baseColor,
      end: baseColor.withOpacity(0.8),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
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
    widget.onPressed?.call();
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
        return Material(
          elevation: _elevationAnimation.value,
          borderRadius: widget.borderRadius ?? BorderRadius.circular(12),
          color: _colorAnimation.value,
          shadowColor: colorScheme.shadow.withOpacity(0.2),
          child: InkWell(
            onTap: widget.onPressed != null ? _handleTapDown : null,
            onTapUp: widget.onPressed != null ? _handleTapUp : null,
            onTapCancel: _handleTapCancel,
            onLongPress: widget.onLongPress,
            borderRadius: widget.borderRadius ?? BorderRadius.circular(12),
            splashFactory: widget.enableRipple
                ? InkRipple.splashFactory
                : NoSplash.splashFactory,
            highlightColor:
                widget.overlayColor?.withOpacity(0.1) ??
                colorScheme.primary.withOpacity(0.1),
            child: Container(
              padding:
                  widget.padding ??
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              decoration: BoxDecoration(
                borderRadius: widget.borderRadius ?? BorderRadius.circular(12),
                border: Border.all(
                  color: colorScheme.outline.withOpacity(0.2),
                  width: 1,
                ),
              ),
              child: DefaultTextStyle(
                style: TextStyle(
                  color: widget.foregroundColor ?? colorScheme.onPrimary,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                ),
                child: widget.child,
              ),
            ),
          ),
        );
      },
    );
  }
}

/// Expressive Icon Button - Modern icon button with animations
class ExpressiveIconButton extends StatefulWidget {
  final Widget icon;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? iconSize;
  final double? size;
  final bool enableAnimation;
  final bool enableRipple;
  final Duration animationDuration;

  const ExpressiveIconButton({
    super.key,
    required this.icon,
    this.onPressed,
    this.onLongPress,
    this.backgroundColor,
    this.foregroundColor,
    this.iconSize,
    this.size,
    this.enableAnimation = true,
    this.enableRipple = true,
    this.animationDuration = const Duration(milliseconds: 200),
  });

  @override
  State<ExpressiveIconButton> createState() => _ExpressiveIconButtonState();
}

class _ExpressiveIconButtonState extends State<ExpressiveIconButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.9,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _rotationAnimation = Tween<double>(
      begin: 0.0,
      end: 0.1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
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
    widget.onPressed?.call();
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
    final buttonSize = widget.size ?? 40.0;

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: Transform.rotate(
            angle: _rotationAnimation.value,
            child: Material(
              elevation: widget.onPressed != null ? 4.0 : 2.0,
              borderRadius: BorderRadius.circular(12),
              color: widget.backgroundColor ?? colorScheme.surface,
              shadowColor: colorScheme.shadow.withOpacity(0.2),
              child: InkWell(
                onTap: widget.onPressed != null ? _handleTapDown : null,
                onTapUp: widget.onPressed != null ? _handleTapUp : null,
                onTapCancel: _handleTapCancel,
                onLongPress: widget.onLongPress,
                borderRadius: BorderRadius.circular(12),
                splashFactory: widget.enableRipple
                    ? InkRipple.splashFactory
                    : NoSplash.splashFactory,
                child: SizedBox(
                  width: buttonSize,
                  height: buttonSize,
                  child: Icon(
                    widget.icon,
                    size: widget.iconSize ?? 24.0,
                    color:
                        widget.foregroundColor ??
                        (widget.onPressed != null
                            ? colorScheme.primary
                            : colorScheme.onSurface.withOpacity(0.6)),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

/// Expressive Filled Button - Tonal style button with enhanced animations
class ExpressiveFilledButton extends StatefulWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final EdgeInsetsGeometry? padding;
  final bool enableAnimation;
  final Duration animationDuration;

  const ExpressiveFilledButton({
    super.key,
    required this.child,
    this.onPressed,
    this.onLongPress,
    this.backgroundColor,
    this.foregroundColor,
    this.padding,
    this.enableAnimation = true,
    this.animationDuration = const Duration(milliseconds: 200),
  });

  @override
  State<ExpressiveFilledButton> createState() => _ExpressiveFilledButtonState();
}

class _ExpressiveFilledButtonState extends State<ExpressiveFilledButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.98,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final baseColor = widget.backgroundColor ?? colorScheme.primary;

    _colorAnimation = ColorTween(
      begin: baseColor,
      end: baseColor.withOpacity(0.8),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
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
    widget.onPressed?.call();
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
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: Material(
            elevation: 1.0,
            borderRadius: BorderRadius.circular(20),
            color: _colorAnimation.value,
            shadowColor: colorScheme.shadow.withOpacity(0.3),
            child: InkWell(
              onTap: widget.onPressed != null ? _handleTapDown : null,
              onTapUp: widget.onPressed != null ? _handleTapUp : null,
              onTapCancel: _handleTapCancel,
              onLongPress: widget.onLongPress,
              borderRadius: BorderRadius.circular(20),
              splashFactory: InkRipple.splashFactory,
              child: Container(
                padding:
                    widget.padding ??
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      _colorAnimation.value!,
                      _colorAnimation.value!.withOpacity(0.8),
                    ],
                  ),
                ),
                child: DefaultTextStyle(
                  style: TextStyle(
                    color: widget.foregroundColor ?? colorScheme.onPrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5,
                  ),
                  child: widget.child,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
