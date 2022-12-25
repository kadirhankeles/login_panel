import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:login_panel/app/routes/app_pages.dart';

class AuthService extends GetxService {
  Future<AuthService> init() async {
    return this;
  }

  createUser(String mail, String password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: "${mail}",
        password: "${password}",
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  loginUser(String mail, String password) async{
    try {
  final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: mail,
    password: password,
  ).then((value) => Get.snackbar("Succes", "Logged in")).then((value) => Get.toNamed(Routes.HOME));
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
}
  }
}
