// TODO Implement this library.import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class TextInputComponent extends StatefulWidget {
  @override
  _TextInputComponentState createState() => _TextInputComponentState();
}

class _TextInputComponentState extends State<TextInputComponent> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Latihan Text Field")),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                 
                hintText: "Name",
                hintStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.w300),
                labelText: "name",
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              )),
              onChanged: (value) {
                setState(() {});
              },
              controller: controller,
            ),
            Text(controller.text)
          ],
        ),
      ),
    );
  }
}
