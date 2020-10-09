import 'package:flutter/material.dart';

class ReusableScreen extends StatelessWidget {
  final String screenTitle;
  final IconData tileIcon;
  final String tileTitle;
  final String tileSubtitle;
  final Function cancelButtonAction;
  final Function proceedButtonAction;

  ReusableScreen({
    @required this.screenTitle,
    @required this.tileIcon,
    @required this.tileTitle,
    @required this.tileSubtitle,
    @required this.cancelButtonAction,
    @required this.proceedButtonAction
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(screenTitle)),
      body: Card(
        child: Column(
        mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(tileIcon),
              title: Text(tileTitle),
              subtitle: Text(tileSubtitle),
            ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text('Cancel'),
                    onPressed: cancelButtonAction,
                  ),
                  FlatButton(
                    child: Text('Proceed'),
                    onPressed: proceedButtonAction,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}