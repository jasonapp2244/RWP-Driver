// ignore_for_file: deprecated_member_use

import 'dart:ui';

extension HexColor on Color {
  /// Safely parse hex colors like "#aabbcc" or "aabbcc".
  static Color fromHex(String? hexString) {
    if (hexString == null || hexString.isEmpty) {
      return const Color(0xFF000000); // default fallback (black)
    }

    hexString = hexString.replaceAll('#', '');

    // If only RGB, add full opacity
    if (hexString.length == 6) {
      hexString = 'FF$hexString';
    }

    // Validate
    if (hexString.length != 8) {
      return const Color(0xFFFFFFFF); // fallback color
    }

    try {
      return Color(int.parse(hexString, radix: 16));
    } catch (e) {
      return const Color(0xFF000000); // fallback if parse fails
    }
  }

  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}

// extension HexColor on Color {
//   /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
//   static Color fromHex(String hexString) {
//     final buffer = StringBuffer();
//     if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
//     buffer.write(hexString.replaceFirst('#', ''));
//     return Color(int.parse(buffer.toString(), radix: 16));
//   }

//   /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
//   String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
//       '${alpha.toRadixString(16).padLeft(2, '0')}'
//       '${red.toRadixString(16).padLeft(2, '0')}'
//       '${green.toRadixString(16).padLeft(2, '0')}'
//       '${blue.toRadixString(16).padLeft(2, '0')}';
// }
