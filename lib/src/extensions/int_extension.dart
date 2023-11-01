extension DateExtension on int {
  // Converts the give Date to Ordinal Suffix
  String get toOrdinalSuffix {
    if (this >= 11 && this <= 13) {
      return '${this}th';
    }

    switch (this % 10) {
      case 1:
        return '${this}st';
      case 2:
        return '${this}nd';
      case 3:
        return '${this}rd';
      default:
        return '${this}th';
    }
  }
}
