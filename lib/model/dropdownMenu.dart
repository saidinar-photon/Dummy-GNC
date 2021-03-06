import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  // final TextInputType textInputType;
  final String hintText;
  final String labelText;
  // final Widget prefixIcon;
  // final String defaultText;
  // final FocusNode focusNode;
  // final bool obscureText;
  // final TextEditingController controller;
  // final Function functionValidate;
  // final String parametersValidate;
  // final TextInputAction actionKeyboard;
  // final Function onSubmitField;
  // final Function onFieldTap;
  final double width;
  final Function onChanged;
  final List items;
  final bool filled;
  final Color fillColor;


  const DropDownWidget(
      {@required 
      this.hintText,
      this.labelText,
      // this.focusNode,
      // this.textInputType,
      // this.defaultText,
      // this.obscureText = false,
      // this.controller,
      // this.functionValidate,
      // this.parametersValidate,
      // this.actionKeyboard = TextInputAction.next,
      // this.onSubmitField,
      // this.onFieldTap,
      // this.prefixIcon,
      this.width,
      this.onChanged,
      this.items,
      this.filled,
      this.fillColor,
      });

  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  double bottomPaddingToError = 12;
  Color primaryColor = Colors.green;
  Color colorBlack = Colors.black;
  Color colorRed = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: primaryColor,
      ),
      child: Container(
        width: widget.width,
        child: DropdownButtonFormField<String>(
           decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primaryColor, width: 2),
          ),
          labelText: widget.labelText,
          filled: widget.filled,
          fillColor: widget.fillColor,
          hintStyle: TextStyle(
            color: Colors.black,
            fontSize: 10.0,
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.normal,
            letterSpacing: 1.2,
          ),
          hintText: widget.hintText,
        ),
          
          items:  widget.items.map((value) {
          return new DropdownMenuItem<String>(
            value: value,
            child: new Text(value),
          );
        }).toList(),
        onChanged: (value) {
          if (widget.onChanged != null) widget.onChanged();
        },
          )) ,
      );

}

}