import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
class MsDateTime {
  final DateTime date;

  const MsDateTime._(this.date);

  static MsDateTime? fromString(String? input) {
    if (input == null || input.isEmpty) {
      return null;
    }
    final String data =
    input.toLowerCase().replaceAll("/", "").replaceAll("date", "").replaceAll("(", "").replaceAll(")", "");
    num hoursToAdd = 0;
    num ms = 0;
    if (data.contains("-")) {
      ms = int.parse(data.split("-")[0]);
      hoursToAdd = -int.parse(data.split("-")[1]);
      hoursToAdd = hoursToAdd / 100;
    } else if (data.contains("+")) {
      ms = int.parse(data.split("+")[0]);
      hoursToAdd = int.parse(data.split("+")[1]);
      hoursToAdd = hoursToAdd / 100;
    } else {
      ms = int.parse(data);
    }
    ms += hoursToAdd;
    return MsDateTime.fromInt(ms.toInt());
  }

  static MsDateTime? fromInt(int? ms) {
    if (ms == null) {
      return null;
    }
    return MsDateTime._(DateTime.fromMillisecondsSinceEpoch(ms));
  }
}
