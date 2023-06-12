
import 'package:flutter/material.dart';

class AppColor {

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  static Color blue = fromHex("#3A82F7");
  static Color lightGrey = fromHex("#EEEEEF");
  static Color cloud = fromHex("#C4BFBD");
  static Color sunglow = fromHex("#FEBD2F");
  static Color godGrey = fromHex("#110E0D");
  static Color midnight = fromHex("#02243F");
  static Color azureBlue = fromHex('#038aff');
  
  // neutrals
  static Color neutralBlack = fromHex('#121212');
  static Color neutralDarkGrey = fromHex('#393A3A');
  static Color neutralGrey = fromHex('#575959');
  static Color neutralLightGrey = fromHex('#F4F4F4');
  static Color neutralWhite = fromHex('#FFFFFF');

  // spotify
  static Color spotifyDarkGrey = fromHex('#181818');
  static Color spotifyGrey = fromHex('#282828');
  static Color spotifyLightGrey = fromHex('#404040');
  static Color spotifyGreen = fromHex("#67CE67"); 

  // ios
  static Color iosDarkGrey = fromHex('#161618');
  static Color iosGrey = fromHex('#212124');
  static Color iosLightGrey = fromHex('#818181');
  static Color iosBlue = fromHex("#007AFF");
}