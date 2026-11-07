import 'package:flutter/material.dart';

/// Couleurs de marque de l'application.
class AppColors {
  AppColors._();

  static const Color primary = Color(0xFF0B3C6F);
  static const Color primaryLight = Color(0xFF8DB7E8);

  static const Color backgroundLight = Color(0xFFF4F6F9);
  static const Color surfaceLight = Color(0xFFFFFFFF);

  static const Color backgroundDark = Color(0xFF0E1621);
  static const Color surfaceDark = Color(0xFF16222F);
}

/// Couleurs sémantiques : hausse, baisse, avertissement, information.
/// Elles changent selon le mode clair ou sombre.
@immutable
class AppSemanticColors extends ThemeExtension<AppSemanticColors> {
  const AppSemanticColors({
    required this.positive,
    required this.negative,
    required this.warning,
    required this.info,
  });

  final Color positive;
  final Color negative;
  final Color warning;
  final Color info;

  static const AppSemanticColors light = AppSemanticColors(
    positive: Color(0xFF1B7F4F),
    negative: Color(0xFFC62F3B),
    warning: Color(0xFFB7791F),
    info: Color(0xFF1F6FB2),
  );

  static const AppSemanticColors dark = AppSemanticColors(
    positive: Color(0xFF4CC38A),
    negative: Color(0xFFFF7A85),
    warning: Color(0xFFF2B84B),
    info: Color(0xFF7DB8F0),
  );

  @override
  AppSemanticColors copyWith({
    Color? positive,
    Color? negative,
    Color? warning,
    Color? info,
  }) {
    return AppSemanticColors(
      positive: positive ?? this.positive,
      negative: negative ?? this.negative,
      warning: warning ?? this.warning,
      info: info ?? this.info,
    );
  }

  @override
  AppSemanticColors lerp(ThemeExtension<AppSemanticColors>? other, double t) {
    if (other is! AppSemanticColors) return this;
    return AppSemanticColors(
      positive: Color.lerp(positive, other.positive, t)!,
      negative: Color.lerp(negative, other.negative, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      info: Color.lerp(info, other.info, t)!,
    );
  }
}