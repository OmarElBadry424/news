import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  final AlignmentGeometry? containerAlignment;
  final double? height;
  final double? width;
  final double horizontalPadding;
  final Color? fieldBackgroundColor;
  final int? maxLength;
  final Color? cursorColor;
  final bool? obscureText;
  final TextEditingController controller;
  final int? maxLines;
  final double? radius;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final Color? textColor;
  final InputBorder? inputBorder;
  final InputBorder? inputEnabledBorder;
  final InputBorder? errorEnabledBorder;
  final String? hintText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final Function()? onPressedIcon;
  final Function(String)? onChange;
  final IconData? iconB;
  final Widget? sufixIconButton;

  const DefaultFormField({
    Key? key,
    this.onChange,
    this.containerAlignment,
    this.sufixIconButton,
    this.height,
    this.width,
    this.horizontalPadding = 0,
    this.maxLength,
    this.fieldBackgroundColor,
    this.cursorColor,
    this.obscureText = false,
    required this.controller,
    this.maxLines,
    this.radius = 30.0,
    this.validator,
    required this.keyboardType,
    this.textColor,
    this.errorEnabledBorder,
    this.inputEnabledBorder,
    this.inputBorder = const OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 2.0),),
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.onPressedIcon,
    this.iconB,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: containerAlignment,
      height: height,
      width: width,
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      decoration: BoxDecoration(
        color: fieldBackgroundColor,
        borderRadius: BorderRadius.circular(radius!),
      ),
      child: TextFormField(
        onChanged: onChange,
        maxLength: maxLength,
        cursorColor: cursorColor,
        obscureText: obscureText!,
        maxLines: obscureText == true ? 1 : maxLines,
        controller: controller,
        validator: validator,
        keyboardType: keyboardType,
        style: TextStyle(
          color: textColor,
        ),
        decoration: InputDecoration(
          border: inputBorder,
          enabledBorder: inputEnabledBorder,
          errorBorder: errorEnabledBorder,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          // suffix: IconButton(
          //           //   onPressed: onPressedIcon,
          //           //   icon: Icon(iconB ),
          //           // )
          suffix: sufixIconButton,

        ),
      ),
    );
  }
}
