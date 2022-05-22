

import 'package:flutter/material.dart';
import 'package:ucek/app/widget/theme/colors.dart';
import 'package:ucek/app/widget/theme/text_theme.dart';


enum KeyboardType {
  name,
  phone,
  email,
  password,
  number
}
extension KeyboardTypeExtension on KeyboardType {
  TextInputType get keyboardType {
    switch(this) {
      case KeyboardType.name:
        return TextInputType.name;
      case KeyboardType.phone:
        return TextInputType.phone;
      case KeyboardType.email:
        return TextInputType.emailAddress;
      case KeyboardType.password:
        return TextInputType.text;
      case KeyboardType.number:
        return TextInputType.number;
    }
  }

  TextCapitalization get textCapitalization {
    return (this == KeyboardType.name) ? TextCapitalization.words : TextCapitalization.none;
  }

  RegExp get regex {
    switch(this) {
      case KeyboardType.name:
        return RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]');
      case KeyboardType.phone:
        return RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)');
      case KeyboardType.email:
        return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
      case KeyboardType.password:
        return RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_])\S{6,}$');
      case KeyboardType.number:
        return RegExp(r'^(?:[1-9]\d*|0(?!(?:\.0+)?$))?(?:\.\d+)?$');
    }
  }

}

class AuthenticationTextField extends StatefulWidget {
  final Color borderColor;
  final String hintText;
  final bool isObscure;
  final KeyboardType keyboardType;
  final TextEditingController controller;
  final Function didEndTextEdit;
  final double height;
  final TextInputAction textInputAction;

  const AuthenticationTextField({
    required this.hintText,
    required this.isObscure,
    required this.keyboardType,
    required this.controller,
    required this.didEndTextEdit,
    this.height = 55,
    this.textInputAction = TextInputAction.next,
    required  this.borderColor,
    Key? key
  }) : super(key: key);

  @override
  _AuthenticationTextFieldState createState() => _AuthenticationTextFieldState();
}

class _AuthenticationTextFieldState extends State<AuthenticationTextField> {

  bool _isObscure = true;

  void togglePasswordView() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  Widget _buildTextField() {
    return SizedBox(
      height: widget.height,
      child: Material(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.richBlack,
        elevation: 0,
        child: Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: TextFormField(

            style: AppTextTheme.theme.bodyText2?.copyWith(color: AppColors.white,fontSize: 16,letterSpacing: 1),
            cursorColor: AppColors.white,
            textAlign: TextAlign.left,
            keyboardType: widget.keyboardType.keyboardType,
            textCapitalization: widget.keyboardType.textCapitalization,
            textInputAction: widget.textInputAction,
            autocorrect: false,
            autofillHints: null,
            enableSuggestions: false,
            maxLines: 1,
            expands: false,
            decoration: InputDecoration(
              fillColor:AppColors.richBlack,
              filled: true,
              contentPadding: const EdgeInsets.all(0.0),
              //isDense: true,
              hintText: widget.hintText ,
              border: InputBorder.none,
              // enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
              // focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 1)),
              hintStyle: AppTextTheme.theme.bodyText2?.copyWith(color: AppColors.white,fontSize: 16,letterSpacing: 1),
            ),
            controller: widget.controller,
          ),

          decoration: BoxDecoration(
              color: AppColors.richBlack,
              border: Border.all(
                width: 1,
                color: widget.borderColor,
              ),
              // Make rounded corners
              borderRadius: BorderRadius.circular(20)
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return SizedBox(
      height: widget.height,
      child: Material(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.richBlack,
        elevation: 0,
        child: Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 15, right: 10),
          child: TextField(
            style: AppTextTheme.theme.bodyText2?.copyWith(color: AppColors.white,fontSize: 16,letterSpacing: 1),
            cursorColor: AppColors.white,
            textAlign: TextAlign.left,
            obscureText: _isObscure,
            keyboardType: widget.keyboardType.keyboardType,
            textInputAction: widget.textInputAction,
            autocorrect: false,
            autofillHints: null,
            enableSuggestions: false,
            decoration: InputDecoration(
              hintText: widget.hintText,
              border: InputBorder.none,
              hintStyle: AppTextTheme.theme.bodyText2?.copyWith(color: AppColors.white,fontSize: 16,letterSpacing: 1),
            ),
            controller: widget.controller,
            onSubmitted: (_) {

            },
          ),
          decoration: BoxDecoration(
              color: AppColors.richBlack,
              border: Border.all(
                width: 1,
                color: widget.borderColor,
              ),
              // Make rounded corners
              borderRadius: BorderRadius.circular(20)
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isObscure) {
      return _buildPasswordTextField();
    }else {
      return _buildTextField();
    }
  }
}