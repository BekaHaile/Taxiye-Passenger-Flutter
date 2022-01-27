/*
  Handles firebase connections
*/
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/state_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:twitter_login/entity/auth_result.dart';
import 'package:twitter_login/twitter_login.dart';
import 'package:get/get.dart';

class FirebaseService extends GetxService {
  // Todo: configure any firebase services here.

  final FirebaseMessaging firebaseMessaging;
  final GoogleSignIn googleSignIn;
  final FacebookAuth facebookAuth;
  final TwitterLogin twitterLogin;
  final FirebaseAuth firebaseAuth;

  FirebaseService({
    required this.firebaseMessaging,
    required this.googleSignIn,
    required this.facebookAuth,
    required this.twitterLogin,
    required this.firebaseAuth,
  });

  Future<String?> getDeviceToken() async {
    // return GetPlatform.isAndroid
    //     ? await firebaseMessaging.getToken()
    //     : await firebaseMessaging.getAPNSToken();
    return await firebaseMessaging.getToken();
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow

    try {
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      return await firebaseAuth.signInWithCredential(credential);
    } catch (error) {
      print(error);
      return Future.error(error);
    }
  }

  Future<UserCredential> signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken?.token ?? '');

    // Once signed in, return the UserCredential
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }

  Future<AuthResult> signInWithTwitter() async {
    final authResult = twitterLogin.login();
    return authResult;
    // switch (authResult.) {
    //   case TwitterLoginStatus.loggedIn:
    //     // success
    //     break;
    //   case TwitterLoginStatus.cancelledByUser:
    //     // cancel
    //     break;
    //   case TwitterLoginStatus.error:
    //     // error
    //     break;
    // }

    // final TwitterLogin twitterLogin = new TwitterLogin(
    //   consumerKey: '<your consumer key>',
    //   consumerSecret: ' <your consumer secret>',
    // );

    // // Trigger the sign-in flow
    // final TwitterLoginResult loginResult = await twitterLogin.authorize();

    // // Get the Logged In session
    // final TwitterSession twitterSession = loginResult.session;

    // // Create a credential from the access token
    // final twitterAuthCredential = TwitterAuthProvider.credential(
    //   accessToken: twitterSession.token,
    //   secret: twitterSession.secret,
    // );

    // // Once signed in, return the UserCredential
    // return await FirebaseAuth.instance
    //     .signInWithCredential(twitterAuthCredential);
  }
}
