part of '../pika_icons.dart';

abstract class _Cross {
  static String cross({required String color, required int strokeWidth}) {
    return '''
    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M6 18L12 12M12 12L18 6M12 12L6 6M12 12L18 18" stroke="$color" stroke-width="$strokeWidth" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    ''';
  }

  static String circle({required String color, required int strokeWidth}) {
    return '''
    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M9 15L12 12M12 12L15 9M12 12L9 9M12 12L15 15M11.9999 20.9999C7.02938 20.9999 2.99994 16.9704 2.99994 11.9999C2.99994 7.02932 7.02938 2.99988 11.9999 2.99988C16.9705 2.99988 20.9999 7.02932 20.9999 11.9999C20.9999 16.9704 16.9705 20.9999 11.9999 20.9999Z" stroke="$color" stroke-width="$strokeWidth" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    ''';
  }

  static String square({required String color, required int strokeWidth}) {
    return '''
    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M8.99998 15L12 12M12 12L15 8.99998M12 12L8.99998 8.99998M12 12L15 15M11.9999 20.9999C9.20429 20.9999 7.80647 20.9999 6.70384 20.5432C5.23367 19.9342 4.06563 18.7661 3.45666 17.296C2.99994 16.1934 2.99994 14.7955 2.99994 11.9999C2.99994 9.20423 2.99994 7.8064 3.45666 6.70378C4.06563 5.23361 5.23367 4.06556 6.70384 3.4566C7.80647 2.99988 9.20429 2.99988 11.9999 2.99988C14.7956 2.99988 16.1934 2.99988 17.296 3.4566C18.7662 4.06556 19.9343 5.23361 20.5432 6.70378C20.9999 7.8064 20.9999 9.20423 20.9999 11.9999C20.9999 14.7955 20.9999 16.1934 20.5432 17.296C19.9343 18.7661 18.7662 19.9342 17.296 20.5432C16.1934 20.9999 14.7956 20.9999 11.9999 20.9999Z" stroke="$color" stroke-width="$strokeWidth" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    ''';
  }
}
