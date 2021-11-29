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
  static const profileInfo = '/profileInfo';
  static const emergencyContacts = '/emergencyContacts';
  static const savedPlaces = '/savedPlaces';

  // Home routes
  static const home = '/home';
  static const pickLocation = '/pickLocation';
  static const deliveryDetail = '/deliveryDetail';

  // wallet routes
  static const wallet = '/wallet';
  static const walletTransfer = '/walletTransfer';
  static const walletHistory = '/walletHistory';

  // Promotions Routes
  static const promotions = '/promotions';
  static const exchangePoints = '/exchangePoints';
  static const promoDetail = '/promoDetail';
  static const coupons = '/coupons';
  static const referFreind = '/referFreind';

  static const buyAirtime = '/buyAirtime';
  static const transferPoints = '/transferPoints';
  static const transactions = '/transactions';
  static const airtimeHistory = '/airtimeHistory';

  // Payment routes
  static const payment = '/payment';

  // Settings routes
  static const settings = '/settings';
  static const privacySettings = '/privacySettings';

  // Legals routes
  static const legals = '/legals';
  static const legalDetails = '/legalDetails';

  // drivers routes
  static const drivers = '/drivers';

  // orders routes
  static const orders = '/orders';
  static const orderDetails = '/orderDetails';
}
