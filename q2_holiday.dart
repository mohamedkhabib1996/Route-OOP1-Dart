class Holiday {
  String name;
  int day;
  String month;

  Holiday(this.name, this.day, this.month);

  static bool inSameMonth(Holiday first, Holiday second) {
    return first.month == second.month;
  }

  static double avgDate(List<Holiday> holidays) {
    if (holidays.isEmpty) {
      throw ArgumentError('The holiday list cannot be empty.');
    }

    int totalDays = 0;
    for (Holiday holiday in holidays) {
      totalDays += holiday.day;
    }

    return totalDays / holidays.length;
  }
}

void main() {
  Holiday independenceDay = Holiday('Independence Day', 4, 'July');
  Holiday anotherJulyHoliday = Holiday('Summer Holiday', 15, 'July');
  Holiday newYear = Holiday('New Year', 1, 'January');

  print('Holiday: ${independenceDay.name}');
  print('Date: ${independenceDay.day} ${independenceDay.month}');

  print('Same month (July and July): '
      '${Holiday.inSameMonth(independenceDay, anotherJulyHoliday)}');
  print('Same month (July and January): '
      '${Holiday.inSameMonth(independenceDay, newYear)}');

  List<Holiday> holidays = [independenceDay, anotherJulyHoliday, newYear];
  print('Average day: ${Holiday.avgDate(holidays)}');
}
