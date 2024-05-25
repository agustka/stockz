import 'dart:math';

class RandomGetter {
  static final Random _rnd = Random(101);
  static const String letters = "abcdefghijklmnopqrstuvwxyz";

  double getRange({required double min, required double max}) {
    return min + _rnd.nextDouble() * (max - min);
  }

  int getIntWithRange({required int min, required int max}) {
    return min + _rnd.nextInt(max - min);
  }

  String getRandomString(int stringLength) {
    return List.generate(stringLength, (int rnd) => letters[_rnd.nextInt(letters.length)]).join();
  }

  String getRandomStringWithRange({required int minLength, required int maxLength}) {
    return List.generate(
      getIntWithRange(min: minLength, max: maxLength),
          (int rnd) => letters[_rnd.nextInt(letters.length)],
    ).join();
  }
}
