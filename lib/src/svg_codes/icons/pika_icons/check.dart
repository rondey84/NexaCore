part of '../pika_icons.dart';

abstract class _Check {
  static String tick({required String color, required int strokeWidth}) {
    return '''
  <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M4 12.3744L9.3513 17.7199L9.77885 16.9723C12.0713 12.9638 15.2438 9.52807 19.0572 6.92405L20 6.28027" stroke="$color" stroke-width="$strokeWidth" stroke-linecap="round" stroke-linejoin="round"/>
  </svg>
    ''';
  }

  static String circle({required String color, required int strokeWidth}) {
    return '''
    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M8.5 12.5124L10.8412 14.851C11.9672 12.8821 13.5256 11.1944 15.3987 9.91536L15.5 9.84619M21 12C21 16.9706 16.9706 21 12 21C7.02944 21 3 16.9706 3 12C3 7.02944 7.02944 3 12 3C16.9706 3 21 7.02944 21 12Z" stroke="$color" stroke-width="$strokeWidth" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    ''';
  }

  static String circleBroken({
    required String color,
    required int strokeWidth,
  }) {
    return '''
    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M8.07257 11.0124L12.086 15.0215C13.9855 11.0964 17.0117 7.82638 20.7783 5.62919L20.9999 5.4999M16 3.93552C14.795 3.33671 13.4368 3 12 3C7.02944 3 3 7.02944 3 12C3 16.9706 7.02944 21 12 21C16.9706 21 21 16.9706 21 12C21 11.4228 20.9457 10.8583 20.8418 10.3114" stroke="$color" stroke-width="$strokeWidth" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    ''';
  }

  static String square({required String color, required int strokeWidth}) {
    return '''
    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M8.5 12.5124L10.8412 14.851C11.9672 12.8821 13.5256 11.1944 15.3987 9.91536L15.5 9.84619M12 21C9.20435 21 7.80653 21 6.7039 20.5433C5.23373 19.9343 4.06569 18.7663 3.45672 17.2961C3 16.1935 3 14.7956 3 12C3 9.20435 3 7.80653 3.45672 6.7039C4.06569 5.23373 5.23373 4.06569 6.7039 3.45672C7.80653 3 9.20435 3 12 3C14.7956 3 16.1935 3 17.2961 3.45672C18.7663 4.06569 19.9343 5.23373 20.5433 6.7039C21 7.80653 21 9.20435 21 12C21 14.7956 21 16.1935 20.5433 17.2961C19.9343 18.7663 18.7663 19.9343 17.2961 20.5433C16.1935 21 14.7956 21 12 21Z" stroke="$color" stroke-width="$strokeWidth" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    ''';
  }

  static String squareBroken({
    required String color,
    required int strokeWidth,
  }) {
    return '''
    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M8.07257 11.0124L12.086 15.0215C13.9855 11.0964 17.0117 7.82638 20.7783 5.62919L20.9999 5.4999M20.9907 10C21 10.5774 21 11.2366 21 12C21 14.7956 21 16.1935 20.5433 17.2961C19.9343 18.7663 18.7663 19.9343 17.2961 20.5433C16.1935 21 14.7956 21 12 21C9.20435 21 7.80653 21 6.7039 20.5433C5.23373 19.9343 4.06569 18.7663 3.45672 17.2961C3 16.1935 3 14.7956 3 12C3 9.20435 3 7.80653 3.45672 6.7039C4.06569 5.23373 5.23373 4.06569 6.7039 3.45672C7.80653 3 9.20435 3 12 3C14.5517 3 15.9389 3 17 3.3473" stroke="$color" stroke-width="$strokeWidth" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    ''';
  }
}
