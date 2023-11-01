part of '../pika_icons.dart';

abstract class _Log {
  static String inRight({required String color, required int strokeWidth}) {
    return '''
    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M10.8115 9C9.82454 9.74024 8.93322 10.599 8.15739 11.5564C8.05246 11.6859 8 11.843 8 12M10.8115 15C9.82454 14.2598 8.93322 13.401 8.15739 12.4436C8.05247 12.3141 8 12.157 8 12M8 12H21M13 4.52779C11.9385 3.57771 10.5367 3 9 3C5.68629 3 3 5.68629 3 9V15C3 18.3137 5.68629 21 9 21C10.5367 21 11.9385 20.4223 13 19.4722" stroke="$color" stroke-width="$strokeWidth" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    ''';
  }

  static String outRight({required String color, required int strokeWidth}) {
    return '''
    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M18.1885 9C19.1755 9.74024 20.0668 10.599 20.8426 11.5564C20.9475 11.6859 21 11.843 21 12M18.1885 15C19.1755 14.2598 20.0668 13.401 20.8426 12.4436C20.9475 12.3141 21 12.157 21 12M21 12H8M13 4.52779C11.9385 3.57771 10.5367 3 9 3C5.68629 3 3 5.68629 3 9V15C3 18.3137 5.68629 21 9 21C10.5367 21 11.9385 20.4223 13 19.4722" stroke="$color" stroke-width="$strokeWidth" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    ''';
  }
}
