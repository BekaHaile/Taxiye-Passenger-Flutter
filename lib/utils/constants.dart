// api constants
// const kBaseUrl = 'http://10.0.2.2:3030';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';

var kBaseUrl = dotenv.env['RELEASE_MODE'] == 'prod'
    ? 'https://release.taxiye.com'
    : 'https://staging.taxiye.com';
const kGooglePlacesUrl = 'https://maps.googleapis.com/maps/api/';
const kTaxiyePhoneNumber = '6055';
const kSOSNumber = '911';
const kAppVersion = '6015';

const kDioConnectTimeout = 50000;
const kDioReceiveTimeout = 50000;

const kPagePadding = 20.0;
const ktitleTopPadding = 76.0;
const List<Country> kCountries = [
  Country(name: 'Ethiopia', code: '+251', isoCode: 'ET', currency: 'ETB'),
  Country(name: 'Kenya', code: '+254', isoCode: 'KE', currency: 'KSH'),
  Country(name: 'USA', code: '+1', isoCode: 'US', currency: '\$'),
  Country(name: 'Sudan', code: '+249', isoCode: 'SD', currency: 'ج.س'),
  Country(name: 'Senegal', code: '+221', isoCode: 'SN', currency: 'CFA'),
  Country(name: 'Nigeria', code: '+234', isoCode: 'NG', currency: '₦'),
];

const List<Language> kLanguages = [
  Language(name: 'English', code: 'en'),
  Language(name: 'Swahili', code: 'sw'),
  Language(name: 'Arabic', code: 'ar'),
  Language(name: 'Oromiffa', code: 'om'),
  Language(name: 'Amharic', code: 'am'),
  Language(name: 'Tigrinya', code: 'tg'),
];

// taxiye passenger constants
const kOperatorToken = '8fa23305501d87e9b87ecac6a87d381b';
const kClientId = 'EEBUOvQq7RRJBxJm';
const kAuthKeyPart = 'nEkVmQh2771MvzGAsKxUUbISgHuCz1zZWfKFywMXCCUt7';

// Map constants
const double kCameraZoom = 15;
const double kCameraTilt = 80;
const double kCameraBearing = 30;
const LatLng kInitialPosition = LatLng(8.9806, 38.7578);
