part of '../pika_icons.dart';

abstract class _Filter {
  static String horizontal({required String color, required int strokeWidth}) {
    return '''
    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M3 7H10M10 7C10 8.65685 11.3431 10 13 10H14C15.6569 10 17 8.65685 17 7C17 5.34315 15.6569 4 14 4H13C11.3431 4 10 5.34315 10 7ZM16 17H21M20 7H21M3 17H6M6 17C6 18.6569 7.34315 20 9 20H10C11.6569 20 13 18.6569 13 17C13 15.3431 11.6569 14 10 14H9C7.34315 14 6 15.3431 6 17Z" stroke="$color" stroke-width="$strokeWidth" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    ''';
  }

  static String vertical({required String color, required int strokeWidth}) {
    return '''
    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M17 3V10M17 10C15.3431 10 14 11.3431 14 13V14C14 15.6569 15.3431 17 17 17C18.6569 17 20 15.6569 20 14V13C20 11.3431 18.6569 10 17 10ZM7 16L7 21M17 20V21M7 3L7 6M7 6C5.34315 6 4 7.34315 4 9L4 10C4 11.6569 5.34315 13 7 13C8.65685 13 10 11.6569 10 10V9C10 7.34315 8.65685 6 7 6Z" stroke="$color" stroke-width="$strokeWidth" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    ''';
  }
}
