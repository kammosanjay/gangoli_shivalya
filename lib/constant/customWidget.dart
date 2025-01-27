import 'package:flutter/material.dart';

class CustomWidgets {
  ///TextFeild Widget

  static Widget customTextFeild({
    required BuildContext context, // Pass BuildContext as a parameter
    String? name,
    String? hint,
    FocusNode? focusNode,
    Icon? icon,
    double? width,
    double? height,
    bool isPassword = false,
    Color? iconColor,
    Icon? suffIcons,
    TextInputAction? action,
  }) {
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      elevation: 5,
      child: TextFormField(
        focusNode: focusNode,
        textAlignVertical: TextAlignVertical.center,
        textInputAction: action,
        obscureText: isPassword,
        decoration: InputDecoration(
          suffixIcon: suffIcons,
          prefixIcon: icon,
          prefixIconColor: iconColor,
          constraints: BoxConstraints(
              maxHeight: 60,
              maxWidth: width ?? MediaQuery.of(context).size.width),
          hintText: hint,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueAccent.withOpacity(0.5)),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ),
    );
  }

  ///Button Widget

  Widget customButton(
      {required BuildContext context, // Pass BuildContext as a parameter
      String? buttonName}) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return ElevatedButton(
      onPressed: () {
        // Get.toNamed(MyPageNames.home);
      },
      child: Text(
        buttonName!,
        style: TextStyle(fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(w, h * 0.2), // Width: 200, Height: 50
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Set border radius
        ), // Button color
      ),
    );
  }
}
