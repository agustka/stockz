part of 'st_theme.dart';

abstract class StThemeColors {
  const StThemeColors();

  Color get overlay;

  Color get grey0;
  Color get grey100;
  Color get grey200;
  Color get grey300;
  Color get grey400;
  Color get grey500;
  Color get grey600;
  Color get grey700;
  Color get grey800;
  Color get grey900;
  Color get grey1000;

  Color get red100;
  Color get red200;
  Color get red300;
  Color get red400;
  Color get red500;
  Color get red600;
  Color get red700;
  Color get red800;
  Color get red900;

  Color get blue100;
  Color get blue200;
  Color get blue300;
  Color get blue400;
  Color get blue500;
  Color get blue600;
  Color get blue700;
  Color get blue800;
  Color get blue900;

  Color get yellow100;
  Color get yellow200;
  Color get yellow300;
  Color get yellow400;
  Color get yellow500;
  Color get yellow600;
  Color get yellow700;
  Color get yellow800;
  Color get yellow900;

  Color get green100;
  Color get green200;
  Color get green300;
  Color get green400;
  Color get green500;
  Color get green600;
  Color get green700;
  Color get green800;
  Color get green900;

  Color get purple100;
  Color get purple200;
  Color get purple300;
  Color get purple400;
  Color get purple500;
  Color get purple600;
  Color get purple700;
  Color get purple800;
  Color get purple900;

  static const List<Color> carbonFootprint = [
    Color(0xffe14050),
    Color(0xff14ac8a),
    Color(0xfffcc036),
    Color(0xffa27306),
    Color(0xff046a80),
    Color(0xffe66272),
    Color(0xff0e7861),
    Color(0xff009cbd),
    Color(0xff915983),
  ];
}

class StLightThemeColors extends StThemeColors {
  const StLightThemeColors();

  @override
  Color get overlay => const Color(0x90000000);

  @override
  Color get grey0 => const Color(0xffffffff);

  Color get test100 => const Color(0xfffafafa);
  @override
  Color get grey100 => const Color(0xfffafafa);
  @override
  Color get grey200 => const Color(0xfff2f2f2);
  @override
  Color get grey300 => const Color(0xffe6e6e6);
  @override
  Color get grey400 => const Color(0xffd9d9d9);
  @override
  Color get grey500 => const Color(0xffbfbfbf);
  @override
  Color get grey600 => const Color(0xff8c8c8c);
  @override
  Color get grey700 => const Color(0xff595959);
  @override
  Color get grey800 => const Color(0xff404040);
  @override
  Color get grey900 => const Color(0xff1f1f1f);
  @override
  Color get grey1000 => const Color(0xff0d0d0d);

  @override
  Color get red100 => const Color(0xfffef5f6);
  @override
  Color get red200 => const Color(0xfffce8eb);
  @override
  Color get red300 => const Color(0xfff9d2d6);
  @override
  Color get red400 => const Color(0xfff3a5ae);
  @override
  Color get red500 => const Color(0xffe96171);
  @override
  Color get red600 => const Color(0xffdC1e35);
  @override
  Color get red700 => const Color(0xffb4182b);
  @override
  Color get red800 => const Color(0xff710f1B);
  @override
  Color get red900 => const Color(0xff430910);

  @override
  Color get blue100 => const Color(0xfff5fdff);
  @override
  Color get blue200 => const Color(0xffe6fafe);
  @override
  Color get blue300 => const Color(0xffcef5fd);
  @override
  Color get blue400 => const Color(0xff9ceafc);
  @override
  Color get blue500 => const Color(0xff6be0fa);
  @override
  Color get blue600 => const Color(0xff06a3c6);
  @override
  Color get blue700 => const Color(0xff05829e);
  @override
  Color get blue800 => const Color(0xff04667c);
  @override
  Color get blue900 => const Color(0xff04667c);

  @override
  Color get yellow100 => const Color(0xfffffcf5);
  @override
  Color get yellow200 => const Color(0xfffff7e6);
  @override
  Color get yellow300 => const Color(0xfff9edd2);
  @override
  Color get yellow400 => const Color(0xfffee09a);
  @override
  Color get yellow500 => const Color(0xfffdd068);
  @override
  Color get yellow600 => const Color(0xfffcc036);
  @override
  Color get yellow700 => const Color(0xfffcc036);
  @override
  Color get yellow800 => const Color(0xff976a02);
  @override
  Color get yellow900 => const Color(0xff654701);

  @override
  Color get green100 => const Color(0xfff5fdfb);
  @override
  Color get green200 => const Color(0xffe8fcf8);
  @override
  Color get green300 => const Color(0xffd2f9f0);
  @override
  Color get green400 => const Color(0xffa4f4e2);
  @override
  Color get green500 => const Color(0xff60eccc);
  @override
  Color get green600 => const Color(0xff119275);
  @override
  Color get green700 => const Color(0xff119275);
  @override
  Color get green800 => const Color(0xff0d725c);
  @override
  Color get green900 => const Color(0xff084537);

  @override
  Color get purple100 => const Color(0xfffbf9fb);
  @override
  Color get purple200 => const Color(0xfff6eff4);
  @override
  Color get purple300 => const Color(0xffecdfe9);
  @override
  Color get purple400 => const Color(0xffd9bed3);
  @override
  Color get purple500 => const Color(0xffbe8eb2);
  @override
  Color get purple600 => const Color(0xff915482);
  @override
  Color get purple700 => const Color(0xff714165);
  @override
  Color get purple800 => const Color(0xff613857);
  @override
  Color get purple900 => const Color(0xff41253a);
}

class StDarkThemeColors extends StThemeColors {
  const StDarkThemeColors();

  @override
  Color get overlay => const Color(0x21ffffff);

  @override
  Color get grey0 => const Color(0xff0d0d0d);
  @override
  Color get grey100 => const Color(0xff1f1f1f);
  @override
  Color get grey200 => const Color(0xff404040);
  @override
  Color get grey300 => const Color(0xff595959);
  @override
  Color get grey400 => const Color(0xff8c8c8c);
  @override
  Color get grey500 => const Color(0xffbfbfbf);
  @override
  Color get grey600 => const Color(0xffd9d9d9);
  @override
  Color get grey700 => const Color(0xffe6e6e6);
  @override
  Color get grey800 => const Color(0xfff2f2f2);
  @override
  Color get grey900 => const Color(0xfffafafa);
  @override
  Color get grey1000 => const Color(0xffffffff);

  //

  @override
  Color get red100 => const Color(0xff430910);
  @override
  Color get red200 => const Color(0xff710f1B);
  @override
  Color get red300 => const Color(0xffb4182b);
  @override
  Color get red400 => const Color(0xffdC1e35);
  @override
  Color get red500 => const Color(0xffdC1e35);
  @override
  Color get red600 => const Color(0xffe14050);
  @override
  Color get red700 => const Color(0xfff9d2d6);
  @override
  Color get red800 => const Color(0xfffce8eb);
  @override
  Color get red900 => const Color(0xfffef5f6);

  @override
  Color get blue100 => const Color(0xff04667c);
  @override
  Color get blue200 => const Color(0xff04667c);
  @override
  Color get blue300 => const Color(0xff05829e);
  @override
  Color get blue400 => const Color(0xff06a3c6);
  @override
  Color get blue500 => const Color(0xff06a3c6);
  @override
  Color get blue600 => const Color(0xff06a3c6);
  @override
  Color get blue700 => const Color(0xffcef5fd);
  @override
  Color get blue800 => const Color(0xffe6fafe);
  @override
  Color get blue900 => const Color(0xfff5fdff);

  @override
  Color get yellow100 => const Color(0xff654701);
  @override
  Color get yellow200 => const Color(0xff976a02);
  @override
  Color get yellow300 => const Color(0xfffcc036);
  @override
  Color get yellow400 => const Color(0xfffcc036);
  @override
  Color get yellow500 => const Color(0xfffcc036);
  @override
  Color get yellow600 => const Color(0xfffcc036);
  @override
  Color get yellow700 => const Color(0xfff9edd2);
  @override
  Color get yellow800 => const Color(0xfffff7e6);
  @override
  Color get yellow900 => const Color(0xfffffcf5);

  @override
  Color get green100 => const Color(0xff084537);
  @override
  Color get green200 => const Color(0xff084537);
  @override
  Color get green300 => const Color(0xff084537);
  @override
  Color get green400 => const Color(0xff0d725c);
  @override
  Color get green500 => const Color(0xff0d725c);
  @override
  Color get green600 => const Color(0xff119275);
  @override
  Color get green700 => const Color(0xff16b692);
  @override
  Color get green800 => const Color(0xff16b692);
  @override
  Color get green900 => const Color(0xfff5fdfb);

  @override
  Color get purple100 => const Color(0xff41253a);
  @override
  Color get purple200 => const Color(0xff613857);
  @override
  Color get purple300 => const Color(0xff714165);
  @override
  Color get purple400 => const Color(0xff915482);
  @override
  Color get purple500 => const Color(0xff915482);
  @override
  Color get purple600 => const Color(0xff915482);
  @override
  Color get purple700 => const Color(0xffecdfe9);
  @override
  Color get purple800 => const Color(0xfff6eff4);
  @override
  Color get purple900 => const Color(0xfffbf9fb);
}

extension ColorExtension on Color {
  ColorFilter get svg {
    return ColorFilter.mode(this, BlendMode.srcIn);
  }
}
