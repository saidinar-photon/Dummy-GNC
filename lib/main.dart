import 'package:aplikasi_hello_world/login_page.dart';
import 'package:aplikasi_hello_world/text_field.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//         // This makes the visual density adapt to the platform that you run
//         // the app on. For desktop platforms, the controls will be smaller and
//         // closer together (more dense) than on mobile platforms.
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

// Aplikasi Hello World
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Aplikasi Hello World"),
//         ),
//         body: Center(
//             child: Container(
//                 color: Colors.lightBlue,
//                 width: 150,
//                 height: 100,
//                 child: Text(
//                   "Hello World sddsdsdsdsdsdsdsdsdsddsasdsdsdsds",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontStyle: FontStyle.italic,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20
//                       ),
//                 ))),
//       ),
//     );
//   }
// }

// // Row And Column
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Latihan Row Dan Column"),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text("Text 1"),
//             Text("Text 2"),
//             Text("Text 3"),
//             Row(children: <Widget>[
//             Text("Text 4"),
//             Text("Text 5"),
//             Text("Text 6"),
//             ],)
//           ],
//         )
//       ),
//     );
//   }
// }

// // Container
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Latihan Container")),
//         body: Container(
//           color: Colors.black45,
//           margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
//           padding: EdgeInsets.all(10),
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: <Color>[
//               Colors.amber,
//               Colors.blue
//             ])),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // Statefull
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int number = 0;

//   void tekanTombol() {
//     setState(() {
//       number = number + 1;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text("Stateful Widget Demo"),
//           ),
//           body: Center(
//               child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text("$number", style: TextStyle(fontSize: 10 + number.toDouble()),),
//               RaisedButton(
//                 child: Text("Tambah Bilangan"),
//                 onPressed: tekanTombol,
//               )
//             ],
//           ))),
//     );
//   }
// }

// //  Anonymous method
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   String message = "Ini Adalah Text";

//   // void tombolDitekan() {
//   //   setState(() {
//   //     message = "Tombol Sudah Ditekan";
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Anonymous Method"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(message),
//               RaisedButton(
//                   child: Text("Tekan Saya"),
//                   onPressed: () {
//                     setState(() {
//                       message = "Tombol Sudah Ditekan";
//                     });
//                   })
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // List dan Listview
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   List<Widget> widgets = [
//     // Text("Data ke-1"),
//     // Text("Data ke-2"),
//     // Text("Data ke-3"),
//   ];

//   int counter = 1;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Latihan Listview"),
//         ),
//         body: ListView(children: <Widget>[
//           Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: <Widget>[
//                 RaisedButton(
//                     child: Text("Tambah Data"),
//                     onPressed: () {
//                       setState(() {
//                         widgets.add(Text(
//                           "data ke-$counter",
//                           style: TextStyle(
//                               fontSize: 35, fontWeight: FontWeight.w300),
//                         ));
//                         counter++;
//                       });
//                     }),
//                 RaisedButton(
//                   child: Text("Hapus Data"),
//                   onPressed: (){
//                     setState(() {
//                       widgets.removeLast();
//                       counter--;
//                     });
//                   },
//                 )
//               ]),
//           Column(
//             children: widgets,
//             crossAxisAlignment: CrossAxisAlignment.start,
//           )
//         ]),
//       ),
//     );
//   }
// }

// Navigation
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage()
    );
  }
}

// // Navigation
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: TextInputComponent()
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Image")),
//         body: Center(
//           child: Container(
//             color: Colors.black,
//             width: 200,
//             height: 200,
//             padding: EdgeInsets.all(3),
//             // child: Image.asset("assets/smiley.png")),
//             child: Image(
//               image: AssetImage("assets/smiley.png"),
//               fit: BoxFit.fill)
//             )
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: ListView(
//           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Container(
//                 // color: Colors.black,
//                 margin: EdgeInsets.fromLTRB(0, 100, 0, 30),
//                 height: 50,
//                 padding: EdgeInsets.all(3),
//                 // child: Image.asset("assets/smiley.png")),
//                 child: Image(
//                     image: AssetImage("assets/GNC.png"),)),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   child: Text(
//                     "Returning Customers",
//                     style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
//                   ),
//                 ),
//                 Container(
//                   child: Text(
//                     "Required",
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatefulWidget {
//   // static String tag = 'login-page';
//   @override
//   _MyAppState createState() => new _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     final logo = Hero(
//       tag: 'hero',
//       child: CircleAvatar(
//         backgroundColor: Colors.transparent,
//         radius: 48.0,
//         child: Image.asset('assets/GNC.png'),
//       ),
//     );

//     final email = TextFormField(
//       keyboardType: TextInputType.emailAddress,
//       autofocus: false,
//       initialValue: 'alucard@gmail.com',
//       decoration: InputDecoration(
//         hintText: 'Email',
//         contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
//       ),
//     );

//     final password = TextFormField(
//       autofocus: false,
//       initialValue: 'some password',
//       obscureText: true,
//       decoration: InputDecoration(
//         hintText: 'Password',
//         contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
//       ),
//     );

//     final loginButton = Padding(
//       padding: EdgeInsets.symmetric(vertical: 16.0),
//       child: Material(
//         borderRadius: BorderRadius.circular(30.0),
//         shadowColor: Colors.lightBlueAccent.shade100,
//         elevation: 5.0,
//         child: MaterialButton(
//           minWidth: 200.0,
//           height: 42.0,
//           onPressed: () {
//             // Navigator.of(context).pushNamed(HomePage.tag);
//           },
//           color: Colors.lightBlueAccent,
//           child: Text('Log In', style: TextStyle(color: Colors.white)),
//         ),
//       ),
//     );

//     final forgotLabel = FlatButton(
//       child: Text(
//         'Forgot password?',
//         style: TextStyle(color: Colors.black54),
//       ),
//       onPressed: () {},
//     );

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: ListView(
//           shrinkWrap: true,
//           padding: EdgeInsets.only(left: 24.0, right: 24.0),
//           children: <Widget>[
//             logo,
//             SizedBox(height: 48.0),
//             email,
//             SizedBox(height: 8.0),
//             password,
//             SizedBox(height: 24.0),
//             loginButton,
//             forgotLabel
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     final logo = Container(
//         padding: EdgeInsets.fromLTRB(0, 100, 0, 70),
//         child: Container(
//           height: 50,
//           child: Image(
//             image: AssetImage("assets/GNC.png"),
//           ),
//         ));

//     final returningCustomers = Padding(
//       padding: EdgeInsets.only(bottom: 20),
//       child: Text(
//         "Returning Customers",
//         style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
//       ),
//     );

//     final requireText = Padding(
//       padding: EdgeInsets.only(bottom: 20),
//       child: Text(
//         "Require",
//         style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
//       ),
//     );

//     final instructionText = Padding(
//       padding: EdgeInsets.only(bottom: 20),
//       child: Text(
//         "If you are a registerd user, please enter your email and password",
//         style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
//       ),
//     );

//     final email = TextFormField(
//       autofocus: false,
//       // obscureText: true,
//       decoration: InputDecoration(
//         hintText: 'Email Adress',
//         contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
//       ),
//     );

//     final password = TextFormField(
//       autofocus: false,
//       // obscureText: true,
//       decoration: InputDecoration(
//         hintText: 'Password',
//         contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
//       ),
//     );

//     final loginButton = Padding(
//       padding: EdgeInsets.fromLTRB(80, 16, 80, 16),
//       child: RaisedButton(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(30.0),
//           ),
//           color: Colors.redAccent,
//           onPressed: () {},
//           child: Text('Log In', style: TextStyle(color: Colors.white))),
//     );

//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         body: Center(
//           child: ListView(
//             // shrinkWrap: true,
//             padding: EdgeInsets.only(left: 50.0, right: 50.0),
//             children: <Widget>[
//               logo,
//               returningCustomers,
//               requireText,
//               instructionText,
//               email,
//               SizedBox(height: 20.0),
//               password,
//               SizedBox(height: 20.0),
//               loginButton
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
