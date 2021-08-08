part of 'app_pages.dart';

abstract class Routes {
  // introduction pages
  static const splash = '/';
  static const language = '/language';
  static const introduction = '/introduction';

  // Auth Routes
  static const auth = '/auth';
  static const verify = '/verify';
  static const setProfile = '/setProfile';
  static const setPasscode = '/setPasscode';

  // Profile Routes
  static const profile = '/profile';

  // Home pages
  static const home = '/home';
  static const pickLocation = '/pickLocation';

  // Payment pages
  static const payment = '/payment';

  // Settings pages
  static const settings = '/settings';

  // Legals pages
  static const legals = '/legals';

  // drivers pages
  static const drivers = '/drivers';

  // orders pages
  static const orders = '/orders';
  static const orderDetails = '/orderDetails';
}
