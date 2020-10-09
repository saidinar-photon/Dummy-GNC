import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  FirebaseAuth _auth = FirebaseAuth.instance;
  static Future signInAnonymous() async {
    // try {Final User user = await _auth.signInAnonymously();
    

    // return user;}
    // catch (e){
    //   print(e.toString());
    //   return null;
    // }
    
  
}
static Future<void> signOut() async{
  _auth.signOut();
}

// sign in with email/password
  static Future<SignInSignUpResult> signInWithEmail({String email, String pass}) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: pass);
      return SignInSignUpResult(user: result.user);
    } catch (e) {
      return SignInSignUpResult(message: e.toString());
    }
  }

}