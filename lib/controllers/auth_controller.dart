import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;

  // Login function
  Future<void> login(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      Get.offAllNamed('/admin-dashboard'); // Update this to check user role
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  // Logout function
  Future<void> logout() async {
    await auth.signOut();
    Get.offAllNamed('/login');
  }
}
