import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_demo/controllers/auth/signin_controller.dart';
import 'package:my_demo/get_pages.dart';
import 'package:my_demo/view/screens/about%20screen/widgets/communication_icon.dart';
import '../../../../core/localization/localization.dart';
import '../../about screen/widgets/communication_icon.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SocialAuthRow extends StatelessWidget {
  const SocialAuthRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignInControllerImp signInControllerImp = Get.put(SignInControllerImp());

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CommuincationIcon(
          CommuincationIconTitle: AppLocal.facebook.tr,
          theIcon: Icons.facebook_rounded,

          theUrlLanching: () {
            // UserCredential cred = await signInWithFacebook();
            // if (cred.credential?.token == null) {
            //   Get.snackbar('', 'unKnown error');
            // } else {
            //   authController.signIn();
            // } ;

            Get.toNamed(AppRoute.underDevelopmentScreen);
          },

          // theUrlLanching: (){},
        ),
        CommuincationIcon(
          CommuincationIconTitle: AppLocal.google.tr,
          theIcon: Icons.email_outlined,

          theUrlLanching: () async {
            UserCredential cred = await signInWithGoogle();
            if (cred.user?.email != null) {
              signInControllerImp.signIn();
            } else {
              Get.snackbar('', 'unKnown Error');
            }
          },

          // theUrlLanching: (){},
        ),
        CommuincationIcon(
          CommuincationIconTitle: AppLocal.phone.tr,
          theIcon: Icons.phone_outlined,

          theUrlLanching: () {
            Get.toNamed(
              AppRoute.underDevelopmentScreen,
            );
          },

          // theUrlLanching: (){},
        ),
      ],
    );
  }
}

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}


// i have canceled the facebook auth for now, for some resones(vervied emails problem)
// Future<UserCredential> signInWithFacebook() async {
//   // Trigger the sign-in flow
//   final LoginResult loginResult = await FacebookAuth.instance.login();

//   // Create a credential from the access token
//   // idont why the token can't be null put i
//   //added ! befor the token below

//   final OAuthCredential facebookAuthCredential =
//       FacebookAuthProvider.credential(loginResult.accessToken!.token);

//   // Once signed in, return the UserCredential
//   return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
// }
