import 'package:bwa_airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final String hint;
  final EdgeInsets margin;
  final bool isSecure;
  final TextEditingController controller;

  const CustomTextFormField(
      {Key? key,
      required this.title,
      required this.hint,
      this.isSecure = false,
      this.margin = EdgeInsets.zero,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: blackTextStyle,
          ),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: kBlackColor,
            obscureText: isSecure,
            controller: controller,
            style: blackTextStyle.copyWith(fontSize: 16),
            decoration: InputDecoration(
              hintText: hint,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(color: kPrimaryColor, width: 2),
              ),
            ),
          )
        ],
      ),
    );
  }
}
