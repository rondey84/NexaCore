part of '../pika_icons.dart';

abstract class _Home {
  static String home({required String color, required int strokeWidth}) {
    return '''
    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M15 21V16C15 14.3431 13.6569 13 12 13C10.3431 13 9 14.3431 9 16V21M7.60561 5.65025L5.00561 8.1058C4.26632 8.80402 3.89667 9.15313 3.63191 9.56641C3.39721 9.93275 3.22385 10.3349 3.11866 10.7571C3 11.2334 3 11.7418 3 12.7587V14.6C3 16.8402 3 17.9603 3.43597 18.816C3.81947 19.5686 4.43139 20.1805 5.18404 20.564C6.03968 21 7.15979 21 9.4 21H14.6C16.8402 21 17.9603 21 18.816 20.564C19.5686 20.1805 20.1805 19.5686 20.564 18.816C21 17.9603 21 16.8402 21 14.6V12.7587C21 11.7418 21 11.2334 20.8813 10.7571C20.7761 10.3349 20.6028 9.93275 20.3681 9.56641C20.1033 9.15313 19.7337 8.80402 18.9944 8.1058L16.3944 5.65025C14.8479 4.18966 14.0746 3.45937 13.1925 3.18385C12.416 2.94132 11.584 2.94132 10.8075 3.18385C9.92537 3.45937 9.15211 4.18966 7.60561 5.65025Z" stroke="$color" stroke-width="$strokeWidth" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    ''';
  }

  static String simple({required String color, required int strokeWidth}) {
    return '''
    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M3 12.7587C3 11.7418 3 11.2334 3.11866 10.7571C3.22385 10.3349 3.39721 9.93277 3.63191 9.56643C3.89667 9.15315 4.26632 8.80404 5.00561 8.10582L7.60561 5.65026C9.15211 4.18967 9.92537 3.45938 10.8075 3.18387C11.584 2.94134 12.416 2.94134 13.1925 3.18387C14.0746 3.45938 14.8479 4.18968 16.3944 5.65026L18.9944 8.10582C19.7337 8.80404 20.1033 9.15315 20.3681 9.56643C20.6028 9.93277 20.7761 10.3349 20.8813 10.7571C21 11.2334 21 11.7418 21 12.7587V14.6C21 16.8402 21 17.9603 20.564 18.816C20.1805 19.5686 19.5686 20.1805 18.816 20.564C17.9603 21 16.8402 21 14.6 21H9.4C7.15979 21 6.03968 21 5.18404 20.564C4.43139 20.1805 3.81947 19.5686 3.43597 18.816C3 17.9603 3 16.8402 3 14.6V12.7587Z" stroke="$color" stroke-width="$strokeWidth" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    ''';
  }
}