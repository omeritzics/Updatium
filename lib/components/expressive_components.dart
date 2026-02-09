import 'package:flutter/material.dart';

/// Expressive Card - A modern Material Design 3 Expressive card component
/// Features: subtle animations, modern styling, and enhanced interactions
class ExpressiveCard extends StatefulWidget {
  final Widget child;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final double? elevation;
  final BorderRadius? borderRadius;
  final bool enableAnimation;
  final Duration animationDuration;

  const ExpressiveCard({
    super.key,
    required this.child,
    this.onTap,
    this.onLongPress,
    this.margin,
    this.padding,
    this.color,
    this.elevation,
    this.borderRadius,
    this.enableAnimation = true,
    this.animationDuration = const Duration(milliseconds: 200),
  });

  @override
  State<ExpressiveCard> createState() => _ExpressiveCardState();
}

class _ExpressiveCardState extends State<ExpressiveCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _elevationAnimation;
  bool _isHovered = false;
  bool _isPressed = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.98).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void didUpdateWidget(ExpressiveCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.elevation != widget.elevation ||
        oldWidget.animationDuration != widget.animationDuration) {
      _updateAnimations();
    }
  }

  void _updateAnimations() {
    _elevationAnimation =
        Tween<double>(
          begin: widget.elevation ?? 2.0,
          end: (widget.elevation ?? 2.0) + 4.0,
        ).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeInOut,
          ),
        );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _handleTapDown(TapDownDetails details) {
    if (widget.enableAnimation) {
      setState(() => _isPressed = true);
      _animationController.forward();
    }
  }

  void _handleTapUp(TapUpDetails details) {
    if (widget.enableAnimation) {
      setState(() => _isPressed = false);
      _animationController.reverse();
    }
    widget.onTap?.call();
  }

  void _handleTapCancel() {
    if (widget.enableAnimation) {
      setState(() => _isPressed = false);
      _animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return MouseRegion(
          onEnter: (_) => setState(() => _isHovered = true),
          onExit: (_) => setState(() => _isHovered = false),
          child: GestureDetector(
            onTapDown: widget.onTap != null ? _handleTapDown : null,
            onTapUp: widget.onTap != null ? _handleTapUp : null,
            onTapCancel: widget.onTap != null ? _handleTapCancel : null,
            onLongPress: widget.onLongPress,
            child: AnimatedContainer(
              duration: widget.animationDuration,
              margin:
                  widget.margin ??
                  const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              transform: Matrix4.identity()..scale(_scaleAnimation.value),
              child: Material(
                elevation: _elevationAnimation.value,
                borderRadius: widget.borderRadius ?? BorderRadius.circular(16),
                color: widget.color ?? colorScheme.surface,
                shadowColor: colorScheme.shadow.withOpacity(0.1),
                child: AnimatedContainer(
                  duration: widget.animationDuration,
                  decoration: BoxDecoration(
                    borderRadius:
                        widget.borderRadius ?? BorderRadius.circular(16),
                    border: Border.all(
                      color: _isHovered
                          ? colorScheme.outline.withOpacity(0.3)
                          : colorScheme.outline.withOpacity(0.1),
                      width: 1,
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        widget.color ?? colorScheme.surface,
                        (widget.color ?? colorScheme.surface).withOpacity(0.95),
                      ],
                    ),
                  ),
                  child: Container(
                    padding: widget.padding ?? const EdgeInsets.all(16),
                    child: widget.child,
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

/// Expressive ListTile - A modern, animated list tile component
class ExpressiveListTile extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final Color? tileColor;
  final EdgeInsetsGeometry? contentPadding;
  final bool enableAnimation;

  const ExpressiveListTile({
    super.key,
    this.leading,
    required this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.onLongPress,
    this.tileColor,
    this.contentPadding,
    this.enableAnimation = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return ExpressiveCard(
      onTap: onTap,
      onLongPress: onLongPress,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      color: tileColor ?? Colors.transparent,
      elevation: 0,
      borderRadius: BorderRadius.circular(12),
      enableAnimation: enableAnimation,
      child: ListTile(
        leading: leading,
        title: title,
        subtitle: subtitle,
        trailing: trailing,
        contentPadding:
            contentPadding ??
            const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        tileColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}

/// Expressive Chip - A modern, animated chip component
class ExpressiveChip extends StatefulWidget {
  final Widget label;
  final Widget? avatar;
  final Widget? deleteIcon;
  final VoidCallback? onDeleted;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final EdgeInsetsGeometry? padding;
  final bool enableAnimation;

  const ExpressiveChip({
    super.key,
    required this.label,
    this.avatar,
    this.deleteIcon,
    this.onDeleted,
    this.backgroundColor,
    this.foregroundColor,
    this.padding,
    this.enableAnimation = true,
  });

  @override
  State<ExpressiveChip> createState() => _ExpressiveChipState();
}

class _ExpressiveChipState extends State<ExpressiveChip>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.elasticOut),
    );

    if (widget.enableAnimation) {
      _animationController.forward();
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return widget.enableAnimation
        ? AnimatedBuilder(
            animation: _scaleAnimation,
            builder: (context, child) {
              return Transform.scale(
                scale: _scaleAnimation.value,
                child: Material(
                  color: widget.backgroundColor ?? colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(8),
                  child: InkWell(
                    onTap: widget.onDeleted,
                    borderRadius: BorderRadius.circular(8),
                    child: Padding(
                      padding:
                          widget.padding ??
                          const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (widget.avatar != null) ...[
                            widget.avatar!,
                            const SizedBox(width: 8),
                          ],
                          DefaultTextStyle(
                            style: TextStyle(
                              color:
                                  widget.foregroundColor ??
                                  colorScheme.onSecondaryContainer,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            child: widget.label,
                          ),
                          if (widget.deleteIcon != null) ...[
                            const SizedBox(width: 8),
                            widget.deleteIcon!,
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          )
        : Material(
            color: widget.backgroundColor ?? colorScheme.secondaryContainer,
            borderRadius: BorderRadius.circular(8),
            child: InkWell(
              onTap: widget.onDeleted,
              borderRadius: BorderRadius.circular(8),
              child: Padding(
                padding:
                    widget.padding ??
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (widget.avatar != null) ...[
                      widget.avatar!,
                      const SizedBox(width: 8),
                    ],
                    DefaultTextStyle(
                      style: TextStyle(
                        color:
                            widget.foregroundColor ??
                            colorScheme.onSecondaryContainer,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      child: widget.label,
                    ),
                    if (widget.deleteIcon != null) ...[
                      const SizedBox(width: 8),
                      widget.deleteIcon!,
                    ],
                  ],
                ),
              ),
            ),
          );
  }
}
