import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Animated Navigation Bar with expressive interactions and animations
class AnimatedNavigationBar extends StatefulWidget {
  final List<NavigationDestination> destinations;
  final int selectedIndex;
  final ValueChanged<int>? onDestinationSelected;

  const AnimatedNavigationBar({
    super.key,
    required this.destinations,
    required this.selectedIndex,
    this.onDestinationSelected,
  });

  @override
  State<AnimatedNavigationBar> createState() => _AnimatedNavigationBarState();
}

class _AnimatedNavigationBarState extends State<AnimatedNavigationBar>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _slideAnimation;
  late Animation<double> _fadeAnimation;
  int? _previousIndex;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _slideAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOutCubic),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOutCubic),
    );

    _previousIndex = widget.selectedIndex;
    _animationController.forward();
  }

  @override
  void didUpdateWidget(AnimatedNavigationBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedIndex != widget.selectedIndex) {
      _previousIndex = oldWidget.selectedIndex;
      _animationController.reset();
      _animationController.forward();
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _handleDestinationSelected(int index) {
    HapticFeedback.selectionClick();
    widget.onDestinationSelected?.call(index);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withOpacity(0.12),
            blurRadius: 12,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: widget.destinations.asMap().entries.map((entry) {
              final index = entry.key;
              final destination = entry.value;
              final isSelected = index == widget.selectedIndex;

              return Expanded(
                child: GestureDetector(
                  onTap: () => _handleDestinationSelected(index),
                  child: AnimatedBuilder(
                    animation: _animationController,
                    builder: (context, child) {
                      // Calculate animation progress
                      final bool isEntering =
                          isSelected && _previousIndex != index;
                      final bool isExiting =
                          !isSelected && _previousIndex == index;

                      double scale = 1.0;
                      double opacity = 1.0;
                      double verticalOffset = 0.0;

                      if (isEntering) {
                        scale = 0.8 + (0.2 * _slideAnimation.value);
                        opacity = _fadeAnimation.value;
                        verticalOffset = 4.0 * (1.0 - _slideAnimation.value);
                      } else if (isExiting) {
                        scale = 1.0 - (0.2 * _slideAnimation.value);
                        opacity = 1.0 - (0.3 * _fadeAnimation.value);
                        verticalOffset = -4.0 * _slideAnimation.value;
                      } else if (isSelected) {
                        scale = 1.0;
                        opacity = 1.0;
                        verticalOffset = 0.0;
                      } else {
                        scale = 1.0;
                        opacity = 0.7;
                        verticalOffset = 0.0;
                      }

                      return Transform.translate(
                        offset: Offset(0, verticalOffset),
                        child: Transform.scale(
                          scale: scale,
                          child: AnimatedOpacity(
                            opacity: opacity,
                            duration: const Duration(milliseconds: 200),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 12,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: isSelected
                                    ? colorScheme.secondaryContainer
                                    : Colors.transparent,
                                border: Border.all(
                                  color: isSelected
                                      ? colorScheme.secondary.withOpacity(0.3)
                                      : Colors.transparent,
                                  width: 1,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AnimatedContainer(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeOutCubic,
                                    transform: Matrix4.identity()
                                      ..scale(isSelected ? 1.1 : 1.0),
                                    child: IconTheme(
                                      data: IconThemeData(
                                        color: isSelected
                                            ? colorScheme.onSecondaryContainer
                                            : colorScheme.onSurface.withOpacity(
                                                0.7,
                                              ),
                                        size: 24,
                                      ),
                                      child: destination.icon,
                                    ),
                                  ),
                                  if (isSelected)
                                    AnimatedContainer(
                                      duration: const Duration(
                                        milliseconds: 200,
                                      ),
                                      curve: Curves.easeOutCubic,
                                      transform: Matrix4.identity()
                                        ..scale(_slideAnimation.value),
                                      child: Container(
                                        width: 4,
                                        height: 4,
                                        decoration: BoxDecoration(
                                          color: colorScheme.primary,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
