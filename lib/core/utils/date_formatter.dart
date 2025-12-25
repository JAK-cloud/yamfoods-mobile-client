/// Utility class for formatting dates in a user-friendly format.
class DateFormatter {
  DateFormatter._();

  /// Formats a date range (start and end dates) in a readable format.
  ///
  /// Examples:
  /// - "Dec 22 - Jan 5, 2025" (different months, same year)
  /// - "Dec 22 - 31, 2024" (same month, same year)
  /// - "Dec 22, 2024 - Jan 5, 2025" (different years)
  ///
  /// [startDate] - The start date of the range
  /// [endDate] - The end date of the range
  ///
  /// Returns a formatted date range string.
  static String formatDateRange(DateTime startDate, DateTime endDate) {
    final startMonth = _getMonthAbbreviation(startDate.month);
    final endMonth = _getMonthAbbreviation(endDate.month);
    final startDay = startDate.day;
    final endDay = endDate.day;
    final startYear = startDate.year;
    final endYear = endDate.year;

    // Same year
    if (startYear == endYear) {
      // Same month
      if (startDate.month == endDate.month) {
        return '$startMonth $startDay - $endDay, $startYear';
      } else {
        // Different months, same year
        return '$startMonth $startDay - $endMonth $endDay, $startYear';
      }
    } else {
      // Different years
      return '$startMonth $startDay, $startYear - $endMonth $endDay, $endYear';
    }
  }

  /// Gets the abbreviated month name.
  static String _getMonthAbbreviation(int month) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return months[month - 1];
  }
}

