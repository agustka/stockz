import 'dart:math';

extension DateTimeExtension on DateTime {
  DateTime get today {
    return DateTime(year, month, day);
  }

  DateTime withSecondsAndMillisecondsRemoved() {
    return DateTime(year, month, day, hour, minute);
  }

  DateTime withTimeAtStartOfDay() {
    final DateTime date = DateTime(year, month, day);
    return date;
  }

  DateTime withTimeAtEndOfDay() {
    return DateTime(year, month, day, 23, 59, 59, 999);
  }

  DateTime toStartOfMonth() {
    return DateTime(year, month);
  }

  DateTime toEndOfMonth() {
    int counter = 0;
    final int startMonth = month;
    DateTime instance = withTimeAtStartOfDay();
    while (instance.month == startMonth && counter <= 31) {
      instance = instance.add(const Duration(days: 1));
      counter++;
    }
    return instance.subtract(const Duration(days: 1)).withTimeAtEndOfDay();
  }

  DateTime get min {
    return DateTime.now().withTimeAtStartOfDay().subtract(const Duration(days: 365 * 100));
  }

  bool sameDay(DateTime? other) {
    if (other == null) {
      return false;
    }
    if (other.year == year && other.month == month && other.day == day) {
      return true;
    }
    return false;
  }

  bool sameMonth(DateTime? other) {
    if (other == null) {
      return false;
    }
    if (other.year == year && other.month == month) {
      return true;
    }
    return false;
  }

  DateTime removeTimeZone() {
    return DateTime(year, month, day, hour, minute, second, millisecond);
  }

  bool lessThan(DateTime other, {bool ignoreTimeZone = true}) {
    final DateTime mine = ignoreTimeZone ? removeTimeZone() : this;
    final DateTime theOther = ignoreTimeZone ? other.removeTimeZone() : other;
    final int compare = mine.compareTo(theOther);
    return compare < 0;
  }

  bool greaterThan(DateTime other, {bool ignoreTimeZone = true}) {
    final DateTime mine = ignoreTimeZone ? removeTimeZone() : this;
    final DateTime theOther = ignoreTimeZone ? other.removeTimeZone() : other;
    final int compare = mine.compareTo(theOther);
    return compare > 0;
  }

  DateTime getDateAfterMonths({required int numberOfMonths}) {
    final int startDay = day;
    final int startMonth = month;
    final int startYear = year;

    final int endYear = startMonth + numberOfMonths > 12 ? startYear + 1 : startYear;
    final int endMonth = (startMonth - 1 + numberOfMonths) % 12 + 1;
    final int endMonthDays = DateTime(endYear, endMonth + 1, 0).day;
    final int endDay = startDay > endMonthDays ? endMonthDays : startDay;

    return DateTime(endYear, endMonth, endDay);
  }

  DateTime addMonths(num months) {
    int month = this.month + months.round();
    int year = this.year;
    int day = this.day;
    if (month > 12) {
      year++;
      month = month - 12;
    }
    final int daysInMonth = DateTime(year, month + 1, 0).day;
    if (day > daysInMonth) {
      day = daysInMonth;
    }
    return DateTime(year, month, day);
  }

  bool get isWeekend {
    return weekday == 6 || weekday == 7;
  }

  String get kennitalaFormat {
    final String year = this.year.toString().substring(2, 4);
    String month = this.month.toString();
    if (month.length == 1) {
      month = "0$month";
    }
    String day = this.day.toString();
    if (day.length == 1) {
      day = "0$day";
    }
    return "$day$month$year";
  }

  (int years, int restInMonths) differenceInYearsWithRestInMonths(DateTime other) {
    const int maxMonths = 12;
    if (isBefore(other)) {
      return (0, 0);
    }
    int years = year - other.year;
    int months = month - other.month;
    if (months < 0) {
      --years;
      months = maxMonths - (other.month - month);
    }
    if (day > other.day) {
      ++months;
      if (months == maxMonths) {
        ++years;
        months = 0;
      }
    }

    return (max(years, 0), max(months, 0));
  }
}
