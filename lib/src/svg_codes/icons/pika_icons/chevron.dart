part of '../pika_icons.dart';

abstract class _Chevron {
  static String down({required String color, required int strokeWidth}) {
    return '''
    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M8 10.1392C9.06206 11.601 10.3071 12.9104 11.7021 14.0334C11.8774 14.1744 12.1226 14.1744 12.2979 14.0334C13.6929 12.9104 14.9379 11.601 16 10.1392" stroke="$color" stroke-width="$strokeWidth" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    ''';
  }

  static String left({required String color, required int strokeWidth}) {
    return '''
    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M14.1253 8.13916C12.6634 9.20122 11.354 10.4462 10.2311 11.8413C10.09 12.0165 10.09 12.2618 10.2311 12.437C11.354 13.8321 12.6634 15.0771 14.1253 16.1392" stroke="$color" stroke-width="$strokeWidth" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    ''';
  }

  static String right({required String color, required int strokeWidth}) {
    return '''
    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M10 8.13916C11.4619 9.20122 12.7713 10.4462 13.8942 11.8413C14.0353 12.0165 14.0353 12.2618 13.8942 12.437C12.7713 13.8321 11.4619 15.0771 10 16.1392" stroke="$color" stroke-width="$strokeWidth" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    ''';
  }

  static String up({required String color, required int strokeWidth}) {
    return '''
    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M8 14.2645C9.06206 12.8026 10.3071 11.4932 11.7021 10.3703C11.8774 10.2293 12.1226 10.2293 12.2979 10.3703C13.6929 11.4932 14.9379 12.8026 16 14.2645" stroke="$color" stroke-width="$strokeWidth" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    ''';
  }
}
