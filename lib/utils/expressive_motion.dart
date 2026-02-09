import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

/// Utility class for Material Design Expressive motion and transitions
class ExpressiveMotion {
  // Standard Material 3 motion durations
  static const Duration durationShort = Duration(milliseconds: 150);
  static const Duration durationMedium = Duration(milliseconds: 250);
  static const Duration durationLong = Duration(milliseconds: 350);
  static const Duration durationExtraLong = Duration(milliseconds: 500);

  // Standard Material 3 motion curves
  static const Curve standardDecelerate = Curves.decelerate;
  static const Curve standardAccelerate = Curves.accelerate;
  static const Curve emphasizedDecelerate = Curves.easeOutCubic;
  static const Curve emphasizedAccelerate = Curves.easeInCubic;
  static const Curve standard = Curves.easeInOut;

  /// Expressive fade transition with scale
  static Widget fadeScaleTransition({
    required Widget child,
    required Animation<double> animation,
    double scaleStart = 0.9,
    double scaleEnd = 1.0,
  }) {
    return ScaleTransition(
      scale: Tween<double>(
        begin: scaleStart,
        end: scaleEnd,
      ).animate(CurvedAnimation(
        parent: animation,
        curve: emphasizedDecelerate,
      )),
      child: FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }

  /// Expressive slide transition with fade
  static Widget slideFadeTransition({
    required Widget child,
    required Animation<double> animation,
    Offset slideStart = const Offset(0.0, 0.1),
  }) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: slideStart,
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: animation,
        curve: emphasizedDecelerate,
      )),
      child: FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }

  /// Expressive shared axis transition
  static Widget sharedAxisTransition({
    required Widget child,
    required Animation<double> animation,
    SharedAxisTransitionType type = SharedAxisTransitionType.horizontal,
  }) {
    return SharedAxisTransition(
      animation: animation,
      secondaryAnimation: const AlwaysStoppedAnimation(0.0),
      transitionType: type,
      child: child,
    );
  }

  /// Expressive container transform
  static Widget containerTransform({
    required Widget child,
    required Animation<double> animation,
  }) {
    return ContainerTransform(
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      animation: animation,
      closedBuilder: (context, action) => child,
      openBuilder: (context, action) => child,
    );
  }

  /// Expressive button press animation
  static Widget expressiveButton({
    required Widget child,
    required VoidCallback onPressed,
    bool enabled = true,
  }) {
    return TweenAnimationBuilder<double>(
      duration: durationShort,
      tween: Tween<double>(begin: 1.0, end: 1.0),
      builder: (context, scale, child) {
        return Transform.scale(
          scale: scale,
          child: child,
        );
      },
      child: GestureDetector(
        onTapDown: enabled ? (_) => {} : null,
        onTapUp: enabled ? (_) => onPressed() : null,
        onTapCancel: enabled ? (_) => {} : null,
        child: AnimatedScale(
          scale: enabled ? 1.0 : 0.95,
          duration: durationShort,
          curve: standardDecelerate,
          child: child,
        ),
      ),
    );
  }

  /// Expressive card hover effect
  static Widget expressiveCard({
    required Widget child,
    bool isHovered = false,
    VoidCallback? onTap,
  }) {
    return AnimatedContainer(
      duration: durationMedium,
      curve: standardDecelerate,
      transform: Matrix4.identity()
        ..translate(0.0, isHovered ? -4.0 : 0.0)
        ..scale(isHovered ? 1.02 : 1.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: isHovered
            ? [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 20,
                  offset: const Offset(0, 8),
                ),
              ]
            : [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20),
          splashFactory: InkRipple.splashFactory,
          child: child,
        ),
      ),
    );
  }

  /// Expressive list item animation
  static Widget animatedListItem({
    required Widget child,
    required int index,
    int totalItems = 1,
  }) {
    return TweenAnimationBuilder<double>(
      duration: durationMedium,
      tween: Tween<double>(begin: 0.0, end: 1.0),
      curve: emphasizedDecelerate,
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(0.0, 50 * (1 - value)),
          child: Opacity(
            opacity: value,
            child: child,
          ),
        );
      },
      child: child,
    );
  }

  /// Expressive shimmer effect
  static Widget shimmerEffect({
    required Widget child,
    bool isLoading = false,
  }) {
    if (!isLoading) return child;

    return ShaderMask(
      shaderCallback: (bounds) {
        return LinearGradient(
          colors: [
            Colors.transparent,
            Colors.white.withOpacity(0.3),
            Colors.transparent,
          ],
          stops: const [0.0, 0.5, 1.0],
          begin: const Alignment(-1.0, 0.0),
          end: const Alignment(1.0, 0.0),
        ).createShader(bounds);
      },
      child: child,
    );
  }

  /// Expressive page route with custom transition
  static PageRouteBuilder<T> expressivePageRoute<T>({
    required WidgetBuilder builder,
    Duration transitionDuration = durationMedium,
    RouteSettings? settings,
  }) {
    return PageRouteBuilder<T>(
      settings: settings,
      transitionDuration: transitionDuration,
      pageBuilder: (context, animation, secondaryAnimation) => builder(context),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(CurvedAnimation(
            parent: animation,
            curve: emphasizedDecelerate,
          )),
          child: FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
      },
    );
  }

  /// Expressive dialog transition
  static Widget expressiveDialog({
    required Widget child,
    required BuildContext context,
  }) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: TweenAnimationBuilder<double>(
        duration: durationMedium,
        tween: Tween<double>(begin: 0.0, end: 1.0),
        curve: emphasizedDecelerate,
        builder: (context, value, child) {
          return Transform.scale(
            scale: value,
            child: FadeTransition(
              opacity: AlwaysStoppedAnimation(value),
              child: child,
            ),
          );
        },
        child: child,
      ),
    );
  }
}

/// Custom expressive page route for better navigation
class ExpressivePageRoute<T> extends PageRoute<T> {
  ExpressivePageRoute({
    required this.builder,
    this.transitionDuration = ExpressiveMotion.durationMedium,
    this.opaque = true,
    this.barrierDismissible = false,
    this.barrierColor,
    this.barrierLabel,
    this.maintainState = true,
    super.settings,
  });

  final WidgetBuilder builder;

  @override
  final Duration transitionDuration;

  @override
  final bool opaque;

  @override
  final bool barrierDismissible;

  @override
  final Color? barrierColor;

  @override
  final String? barrierLabel;

  @override
  final bool maintainState;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return builder(context);
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return ExpressiveMotion.slideFadeTransition(
      animation: animation,
      child: child,
    );
  }
}
