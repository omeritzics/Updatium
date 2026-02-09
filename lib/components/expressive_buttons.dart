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
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _updateAnimations();
  }

  @override
  void didUpdateWidget(ExpressiveButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.elevation != widget.elevation ||
        oldWidget.backgroundColor != widget.backgroundColor ||
        oldWidget.animationDuration != widget.animationDuration ||
        oldWidget.style != widget.style) {
      _updateAnimations();
    }
  }

  void _updateAnimations() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    
    // Use effective background color from style or individual property
    final effectiveStyle = widget.style;
    final isDisabled = widget.onPressed == null;
    final effectiveBackgroundColor = widget.backgroundColor ?? 
        effectiveStyle?.backgroundColor?.resolve({}) ?? 
        (isDisabled ? colorScheme.surface : colorScheme.primary);

    _elevationAnimation = Tween<double>(
      begin: widget.elevation ?? 
          effectiveStyle?.elevation?.resolve({}) ?? 
          2.0,
      end: (widget.elevation ?? 
          effectiveStyle?.elevation?.resolve({}) ?? 
          2.0) + 4.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _colorAnimation = ColorTween(
      begin: effectiveBackgroundColor,
      end: isDisabled ? effectiveBackgroundColor : effectiveBackgroundColor.withOpacity(0.8),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTapDown(TapDownDetails details) {
    if (widget.enableAnimation && widget.onPressed != null) {
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

    // Apply style if provided, otherwise use individual properties
    final effectiveStyle = widget.style;
    final isDisabled = widget.onPressed == null;
    final effectiveBackgroundColor = widget.backgroundColor ?? 
        effectiveStyle?.backgroundColor?.resolve({}) ?? 
        (isDisabled ? colorScheme.surface : colorScheme.primary);
    final effectiveForegroundColor = widget.foregroundColor ?? 
        effectiveStyle?.foregroundColor?.resolve({}) ?? 
        (isDisabled ? colorScheme.onSurface.withOpacity(0.38) : colorScheme.onPrimary);
    final effectiveElevation = widget.elevation ?? 
        effectiveStyle?.elevation?.resolve({}) ?? 
        2.0;
    final effectiveBorderRadius = widget.borderRadius ?? 
        (effectiveStyle?.shape?.resolve({}) is OutlinedBorder 
            ? (effectiveStyle?.shape?.resolve({}) as OutlinedBorder).borderRadius 
            : null) ?? 
        BorderRadius.circular(12);
    final effectivePadding = widget.padding ?? 
        effectiveStyle?.padding?.resolve({}) ?? 
        const EdgeInsets.symmetric(horizontal: 24, vertical: 12);
    final effectiveOverlayColor = widget.overlayColor ?? 
        effectiveStyle?.overlayColor?.resolve({});

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Material(
          elevation: _elevationAnimation.value,
          borderRadius: effectiveBorderRadius,
          color: _colorAnimation.value,
          shadowColor: colorScheme.shadow.withOpacity(0.2),
          child: InkWell(
            onTapDown: widget.onPressed != null ? _handleTapDown : null,
            onTapUp: widget.onPressed != null ? _handleTapUp : null,
            onTapCancel: _handleTapCancel,
            onLongPress: widget.onLongPress,
            borderRadius: effectiveBorderRadius,
            splashFactory: widget.enableRipple
                ? InkRipple.splashFactory
                : NoSplash.splashFactory,
            highlightColor:
                effectiveOverlayColor?.withOpacity(0.1) ??
                colorScheme.primary.withOpacity(0.1),
            child: Container(
              padding: effectivePadding,
              decoration: BoxDecoration(
                borderRadius: effectiveBorderRadius,
                border: Border.all(
                  color: colorScheme.outline.withOpacity(0.2),
                  width: 1,
                ),
              ),
              child: DefaultTextStyle(
                style: TextStyle(
                  color: effectiveForegroundColor,
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
      end: 0.95,
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
    if (widget.enableAnimation && widget.onPressed != null) {
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
    final isDisabled = widget.onPressed == null;

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
              color: isDisabled 
                  ? colorScheme.surface
                  : (widget.backgroundColor ?? colorScheme.surface),
              shadowColor: colorScheme.shadow.withOpacity(0.2),
              child: InkWell(
                onTapDown: widget.onPressed != null ? _handleTapDown : null,
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
                  child: IconTheme(
                    data: IconThemeData(
                      size: widget.iconSize ?? 24.0,
                      color: isDisabled
                          ? colorScheme.onSurface.withOpacity(0.38)
                          : (widget.foregroundColor ??
                              (widget.onPressed != null
                                  ? colorScheme.primary
                                  : colorScheme.onSurface.withOpacity(0.6))),
                    ),
                    child: Center(child: widget.icon),
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
  final ButtonStyle? style;
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
    this.style,
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
      end: 0.95,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _updateAnimations();
  }

  @override
  void didUpdateWidget(ExpressiveFilledButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.backgroundColor != widget.backgroundColor ||
        oldWidget.animationDuration != widget.animationDuration) {
      _updateAnimations();
    }
  }

  void _updateAnimations() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    
    final effectiveStyle = widget.style;
    final isDisabled = widget.onPressed == null;
    final effectiveBackgroundColor = widget.backgroundColor ?? 
        effectiveStyle?.backgroundColor?.resolve({}) ?? 
        (isDisabled ? colorScheme.surface : colorScheme.primary);

    _colorAnimation = ColorTween(
      begin: effectiveBackgroundColor,
      end: isDisabled ? effectiveBackgroundColor : effectiveBackgroundColor.withOpacity(0.8),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTapDown(TapDownDetails details) {
    if (widget.enableAnimation && widget.onPressed != null) {
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
    final isDisabled = widget.onPressed == null;
    final effectiveForegroundColor = widget.foregroundColor ?? 
        colorScheme.onPrimary;

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: Material(
            elevation: 2.0,
            borderRadius: BorderRadius.circular(12),
            color: _colorAnimation.value,
            shadowColor: colorScheme.shadow.withOpacity(0.2),
            child: InkWell(
              onTapDown: widget.onPressed != null ? _handleTapDown : null,
              onTapUp: widget.onPressed != null ? _handleTapUp : null,
              onTapCancel: _handleTapCancel,
              onLongPress: widget.onLongPress,
              borderRadius: BorderRadius.circular(12),
              splashFactory: InkRipple.splashFactory,
              child: Container(
                padding:
                    widget.padding ??
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      _colorAnimation.value ??
                          (widget.backgroundColor ?? colorScheme.primary),
                      (_colorAnimation.value ??
                              (widget.backgroundColor ?? colorScheme.primary))
                          .withOpacity(0.8),
                    ],
                  ),
                ),
                child: DefaultTextStyle(
                  style: TextStyle(
                    color: isDisabled 
                        ? colorScheme.onSurface.withOpacity(0.38)
                        : effectiveForegroundColor,
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
