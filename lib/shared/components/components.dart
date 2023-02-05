

import 'package:flutter/material.dart';

void navigateTo(context, widget) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ));

void navigateToAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
    (route) => false);

Widget defultTextButtton(
        {required String text, required void Function()? function}) =>
    TextButton(onPressed: function, child: Text(text.toUpperCase()));



Widget defultFormField({
  required TextInputType type,
  required TextEditingController controller,
  required String label,
   IconData? prefix,
  IconData? suffix,
  bool isPassword = false,
  int maxlines =1,
  required String? Function(String? val)? validator,
  void Function(String val)? onChanged,
  VoidCallback? passwordShow,
  VoidCallback? onTap,
  void Function(String)? onSubmeted,
}) =>
    Expanded(


      child: TextFormField(
minLines: 1,
        maxLines: maxlines,
        onTap: onTap,
        onFieldSubmitted: onSubmeted,
        onChanged: onChanged,
        obscureText: isPassword,
        validator: validator,
        keyboardType: type,
        controller: controller,
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.right,
        decoration: InputDecoration(

fillColor: Colors.grey.shade200,
          filled: true,
          labelStyle: TextStyle(

          ),
          labelText: label,
          prefixIcon: Icon(prefix),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide(color: Colors.transparent)
          ),
          suffixIcon: suffix != null
              ? IconButton(
                  icon: Icon(suffix),
                  onPressed: passwordShow,
                )
              : null,
        ),
      ),
    );

Widget defultButton({
  double width = double.infinity,
  Color Background = Colors.blue,
  bool isUpperCase = true,
  double radius = 3.0,
  double height = 45.0,
  required String text,
  required VoidCallback function,
}) =>
    Container(
      height: height,
      width: width,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(color: Colors.white),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: Background,
      ),
    );

// void ShowToast({
//   required String text,
//   required ToastState state,
// }) =>
//     Fluttertoast.showToast(
//       msg: text,
//       gravity:ToastGravity.BOTTOM,
//       timeInSecForIosWeb: 5,
//       toastLength: Toast.LENGTH_LONG,
//       backgroundColor: chooseToastColor(state),
//       fontSize: 16.0,
//       textColor: Colors.white
//     );

// enum ToastState { SUCSSES, ERROR, WARNING }
//
// Color chooseToastColor(ToastState state) {
//   late Color color;
//   switch (state) {
//     case ToastState.SUCSSES:
//       color = Colors.green;
//       break;
//     case ToastState.ERROR:
//       color = Colors.red;
//       break;
//     case ToastState.WARNING:
//       color = Colors.amber;
//       break;
//   }
//   return color;
// }

Widget myDivider()=> Padding(
  padding: const EdgeInsets.symmetric(vertical: 10),
  child: Container(
    width: double.infinity,
    height: 4.0,
    color: Colors.grey[400],
  ),
);

