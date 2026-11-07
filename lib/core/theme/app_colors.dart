import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Fonds (bleu nuit)
  static const Color background = Color(0xFF0A1020);
  static const Color surface = Color(0xFF111A2E);
  static const Color surfaceElevated = Color(0xFF18233D);
  static const Color border = Color(0xFF243152);

  // Marque
  static const Color primary = Color(0xFF4C7DFF);
  static const Color gold = Color(0xFFD4AF37);
  static const Color goldSoft = Color(0xFFE8CF7A);

  // Sémantique (indicateurs)
  static const Color success = Color(0xFF2ECC8F);
  static const Color danger = Color(0xFFFF5C6C);
  static const Color warning = Color(0xFFFFB547);
  static const Color info = Color(0xFF4C9DFF);

  // Texte
  static const Color textPrimary = Color(0xFFF2F5FB);
  static const Color textSecondary = Color(0xFF9AA7C4);
  static const Color textMuted = Color(0xFF66738F);

  // Dégradés
  static const LinearGradient cardGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF1B2745), Color(0xFF111A2E)],
  );

  static const LinearGradient goldGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFE8CF7A), Color(0xFFD4AF37)],
  );

  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF4C7DFF), Color(0xFF2D56D6)],
  );

  // Palette pour les graphiques (fl_chart)
  static const List<Color> chartPalette = [
    Color(0xFF4C7DFF),
    Color(0xFFD4AF37),
    Color(0xFF2ECC8F),
    Color(0xFFFF5C6C),
    Color(0xFFB07CFF),
    Color(0xFF4CD4E8),
  ];
}