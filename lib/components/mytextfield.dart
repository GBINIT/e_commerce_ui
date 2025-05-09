import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  final String hinttext;
  final Icon icon;

  const Mytextfield({
    super.key,
    required this.hinttext,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        decoration: InputDecoration(
            hintText: hinttext,
            prefixIcon: icon,
            prefixIconColor: Colors.blueGrey,
            filled: true,
            fillColor: const Color(0xFFF2F3F5),
            hintStyle: const TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            )),
      ),
    );
  }
}

class MyPasswordTextField extends StatefulWidget {
  final String hintText;
  final Icon prefixIcon;
  final IconButton sufixIcon;
  const MyPasswordTextField({super.key , required this.hintText , required this.prefixIcon , required this.sufixIcon});

  @override
  State<MyPasswordTextField> createState() => _MyPasswordTextFieldState();
}

class _MyPasswordTextFieldState extends State<MyPasswordTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        decoration: InputDecoration(
            hintText:widget.hintText ,
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.sufixIcon,
            prefixIconColor: Colors.blueGrey,
            filled: true,
            fillColor: const Color(0xFFF2F3F5),
            hintStyle: const TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            )),
      ),
    );
  }
}
