import 'package:chatty/common/entities/user.dart';
import 'package:chatty/common/routes/routes.dart';
import 'package:chatty/pages/frame/sign_in/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInController extends GetxController {
  SignInController();
  final state = SignInState();

  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'openid',
    ],
  );

  void handleSignIn(String type) async {
    // 1: email, 2: google, 3: facebook, 4: apple, 5: phone number
    try {
      if (type == 'phone number') {
        if (kDebugMode) {
          print('You are login with phone number');
        }
      } else if (type == 'google') {
        var user = await _googleSignIn.signIn();
        if (user != null) {
          final gAuthentication = await user.authentication;
          final credential = GoogleAuthProvider.credential(
            idToken: gAuthentication.idToken,
            accessToken: gAuthentication.accessToken,
          );

          await FirebaseAuth.instance.signInWithCredential(credential);
          String? displaynName = user.displayName;
          String email = user.email;
          String id = user.id;
          String photoUrl = user.photoUrl ?? "assets/icons/google.png";
          final LoginRequestEntity loginPanelListRequestEntity =
              LoginRequestEntity();
          loginPanelListRequestEntity.avatar = photoUrl;
          loginPanelListRequestEntity.name = displaynName;
          loginPanelListRequestEntity.email = email;
          loginPanelListRequestEntity.open_id = id;
          loginPanelListRequestEntity.type = 2;
          asyncPostAllData();
        }
      } else if (type == 'facebook') {
        if (kDebugMode) {
          print('You are login with facebook');
        }
      } else if (type == 'apple') {
        if (kDebugMode) {
          print('You are login with apple');
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('...Error with login $e');
      }
    }
  }

  asyncPostAllData() {
    Get.offAllNamed(AppRoutes.Message);
  }
}
