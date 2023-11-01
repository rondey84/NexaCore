part of '../pika_icons.dart';

abstract class _Setting {
  static String one({required String color, required int strokeWidth}) {
    return '''
    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M10.2008 4.11979C10.8318 3.50171 11.1473 3.19267 11.5097 3.07658C11.8286 2.97443 12.1714 2.97443 12.4903 3.07658C12.8527 3.19267 13.1682 3.50171 13.7992 4.11979L14.1026 4.41697C14.3755 4.68421 14.5119 4.81783 14.6702 4.9139C14.8105 4.9991 14.963 5.06229 15.1225 5.10127C15.3024 5.14524 15.4933 5.14722 15.8752 5.15119L16.2999 5.15559C17.1831 5.16476 17.6248 5.16934 17.9631 5.34351C18.2608 5.49675 18.5032 5.73915 18.6565 6.03685C18.8306 6.37519 18.8352 6.81682 18.8444 7.70009L18.8488 8.12478C18.8527 8.50667 18.8547 8.69761 18.8987 8.87745C18.9377 9.03692 19.0009 9.18948 19.0861 9.32981C19.1821 9.48806 19.3158 9.62448 19.583 9.89732L19.8802 10.2007C20.4983 10.8318 20.8073 11.1473 20.9234 11.5097C21.0255 11.8286 21.0255 12.1714 20.9234 12.4902C20.8073 12.8526 20.4983 13.1682 19.8802 13.7992L19.583 14.1026C19.3158 14.3755 19.1821 14.5119 19.0861 14.6701C19.0009 14.8105 18.9377 14.963 18.8987 15.1225C18.8547 15.3023 18.8527 15.4933 18.8488 15.8752L18.8444 16.2999C18.8352 17.1831 18.8306 17.6248 18.6565 17.9631C18.5032 18.2608 18.2608 18.5032 17.9631 18.6564C17.6248 18.8306 17.1831 18.8352 16.2999 18.8443L15.8752 18.8488C15.4933 18.8527 15.3024 18.8547 15.1225 18.8987C14.963 18.9377 14.8105 19.0008 14.6702 19.086C14.5119 19.1821 14.3755 19.3157 14.1026 19.583L13.7992 19.8801C13.1682 20.4982 12.8527 20.8073 12.4903 20.9234C12.1714 21.0255 11.8286 21.0255 11.5097 20.9234C11.1473 20.8073 10.8318 20.4982 10.2008 19.8801L9.89735 19.583C9.62451 19.3157 9.48809 19.1821 9.32984 19.086C9.18951 19.0008 9.03695 18.9377 8.87749 18.8987C8.69764 18.8547 8.5067 18.8527 8.12481 18.8488L7.70012 18.8443C6.81685 18.8352 6.37522 18.8306 6.03688 18.6564C5.73918 18.5032 5.49678 18.2608 5.34354 17.9631C5.16937 17.6248 5.16479 17.1831 5.15562 16.2999L5.15122 15.8752C5.14725 15.4933 5.14527 15.3023 5.1013 15.1225C5.06232 14.963 4.99913 14.8105 4.91393 14.6701C4.81786 14.5119 4.68424 14.3755 4.417 14.1026L4.11982 13.7992C3.50174 13.1682 3.1927 12.8526 3.07661 12.4902C2.97446 12.1714 2.97446 11.8286 3.07661 11.5097C3.1927 11.1473 3.50174 10.8318 4.11982 10.2007L4.417 9.89732C4.68424 9.62448 4.81786 9.48806 4.91393 9.32981C4.99913 9.18948 5.06232 9.03692 5.1013 8.87745C5.14527 8.69761 5.14725 8.50667 5.15122 8.12478L5.15562 7.70009C5.16479 6.81682 5.16937 6.37519 5.34354 6.03685C5.49678 5.73915 5.73918 5.49675 6.03688 5.34351C6.37522 5.16934 6.81685 5.16476 7.70012 5.15559L8.12481 5.15119C8.5067 5.14722 8.69764 5.14524 8.87749 5.10127C9.03695 5.06229 9.18951 4.9991 9.32984 4.9139C9.48809 4.81783 9.62451 4.68421 9.89735 4.41697L10.2008 4.11979Z" stroke="$color" stroke-width="$strokeWidth" stroke-linecap="round" stroke-linejoin="round"/>
      <path d="M10.991 12C10.991 11.4477 11.4479 11 12.0002 11C12.5525 11 13.0094 11.4477 13.0094 12C13.0094 12.5523 12.5525 13 12.0002 13C11.4479 13 10.991 12.5523 10.991 12Z" stroke="$color" stroke-width="$strokeWidth" stroke-linecap="round" stroke-linejoin="round"/>
    </svg>
    ''';
  }
}