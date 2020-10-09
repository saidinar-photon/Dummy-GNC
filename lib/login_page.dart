import 'package:aplikasi_hello_world/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // String email;
  // String password;
  // FirebaseAuth _auth = FirebaseAuth.instance;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final GlobalKey<FormState> _scaffoldKey = GlobalKey<FormState>();

  // Future _signInWithEmailAndPassword() async {
  //   try {
  //     final User user = (await _auth.signInWithEmailAndPassword(
  //       email: _emailController.text,
  //       password: _passwordController.text,
  //     ))
  //         .user;
  //     if (!user.emailVerified) {
  //       await user.sendEmailVerification();
  //     }
  //     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
  //       return ProfilePage(
  //           // user: user,
  //           );
  //     }));
  //   } catch (e) {
  //     Scaffold.of(context).showSnackBar(SnackBar(
  //       content: Text("Failed to sign in with Email & Password"),
  //     ));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final logo = Container(
        padding: EdgeInsets.fromLTRB(0, 100, 0, 70),
        child: Container(
          height: 44,
          width: 150,
          child: Image(
            image: AssetImage("assets/GNC.png"),
          ),
        ));

    final returningCustomers = Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Text(
        "Returning Customers",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
      ),
    );

    final requireText = Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Text(
        "Require",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );

    final instructionText = Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Text(
        "If you are a registerd user, please enter your email and password",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );

    final emailForm = TextFormField(
      autofocus: false,

      controller: _emailController,
      // obscureText: true,
      decoration: InputDecoration(
        hintText: 'Email Adress',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final passwordForm = TextFormField(
      autofocus: false,

      controller: _passwordController,
      // obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
      child: RaisedButton(
          padding: EdgeInsets.fromLTRB(62.5, 15, 62.5, 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          color: Colors.redAccent,
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return ProfilePage();
            }));
          },
          child: Text('Log In', style: TextStyle(color: Colors.white))),
    );

    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        body: Center(
          child: ListView(
            // shrinkWrap: true,
            padding: EdgeInsets.only(left: 50.0, right: 50.0),
            children: <Widget>[
              logo,
              returningCustomers,
              requireText,
              instructionText,
              emailForm,
              SizedBox(height: 20.0),
              passwordForm,
              SizedBox(height: 20.0),
              loginButton
            ],
          ),
        ),
      ),
    );
  }
}
