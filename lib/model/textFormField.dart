import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  final TextInputType textInputType;
  final String hintText;
  final String labelText;
  final Widget prefixIcon;
  final String defaultText;
  final FocusNode focusNode;
  final bool obscureText;
  final TextEditingController controller;
  final Function functionValidate;
  final String parametersValidate;
  final TextInputAction actionKeyboard;
  final Function onSubmitField;
  final Function onFieldTap;

  const TextFormFieldWidget(
      {@required this.hintText,
      this.labelText,
      this.focusNode,
      this.textInputType,
      this.defaultText,
      this.obscureText = false,
      this.controller,
      this.functionValidate,
      this.parametersValidate,
      this.actionKeyboard = TextInputAction.next,
      this.onSubmitField,
      this.onFieldTap,
      this.prefixIcon});

  @override
  _TextFormFieldWidgetState createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
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
      child: TextFormField(
        cursorColor: primaryColor,
        obscureText: widget.obscureText,
        keyboardType: widget.textInputType,
        textInputAction: widget.actionKeyboard,
        focusNode: widget.focusNode,
        style: TextStyle(
          color: colorBlack,
          fontSize: 12.0,
          fontWeight: FontWeight.w200,
          fontStyle: FontStyle.normal,
          letterSpacing: 1.2,
        ),
        initialValue: widget.defaultText,
        decoration: InputDecoration(
          prefixIcon: widget.prefixIcon,
          hintText: widget.hintText,
          labelText: widget.labelText,
          filled: true,
          fillColor: Colors.grey[300],
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: colorBlack, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primaryColor, width: 2),
          ),
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 10.0,
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.normal,
            letterSpacing: 1.2,
          ),
          labelStyle: TextStyle(
            fontWeight: FontWeight.w300,
          ),
          contentPadding: EdgeInsets.only(
              top: 20, bottom: bottomPaddingToError, left: 8.0, right: 8.0),
          isDense: true,
          errorStyle: TextStyle(
            color: colorRed,
            fontSize: 10.0,
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.normal,
            letterSpacing: 1.2,
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primaryColor),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primaryColor),
          ),
        ),
        controller: widget.controller,
        validator: (value) {
          if (widget.functionValidate != null) {
            String resultValidate =
                widget.functionValidate(value, widget.parametersValidate);
            if (resultValidate != null) {
              return resultValidate;
            }
          }
          return null;
        },
        onFieldSubmitted: (value) {
          if (widget.onSubmitField != null) widget.onSubmitField();
        },
        onTap: () {
          if (widget.onFieldTap != null) widget.onFieldTap();
        },
      ),
    );
  }
}

String commonValidation(String value, String messageError) {
  var required = requiredValidator(value, messageError);
  if (required != null) {
    return required;
  }
  return null;
}

String requiredValidator(value, messageError) {
  if (value.isEmpty) {
    return messageError;
  }
  return null;
}

void changeFocus(
    BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}