import 'package:flutter/material.dart';

import '../textstyles.dart';

class TxtField extends StatelessWidget {
  final Function? onChanged;
  final double radius = 10;
  final double radius2 = 30;

  final String? lblTxt;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final Color? fillColor;
  final String? hintTxt;
  final bool? ispassword;
  final bool? isunique;
  final int? maxLines;

  final TextEditingController? controller;

 const TxtField(
      {Key? key,
      this.lblTxt,
      this.onChanged,
      this.maxLines,
      this.prefixIcon,
      this.suffixIcon,
      this.fillColor,
      this.hintTxt,
      this.ispassword = false,
      this.isunique = false,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,

      validator: (val) => val == "" ? "*required" : null,

      onChanged: (value) =>
          onChanged != null ? onChanged!(value) : null,
      controller: controller,

      style: TextStyles.subtitle2?.copyWith(fontSize: 12, color: Colors.grey),

      //  initialValue: 'Input text',
      decoration: InputDecoration(

        filled: true,

        //   labelText: lblTxt,

        hintStyle: TextStyle(color: Colors.grey),
        //  labelStyle: TextStyle(color: Colors.grey.shade500),
        //   errorText: 'Error message',
        focusedBorder: OutlineInputBorder(
          borderRadius: isunique == false
              ? BorderRadius.circular(radius)
              : BorderRadius.circular(radius2),
          borderSide: BorderSide(width: 2, color: Colors.blue.withOpacity(0.1)),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: isunique == false
              ? BorderRadius.circular(radius)
              : BorderRadius.circular(radius2),
          borderSide: const BorderSide(width: 1, color: Colors.orange),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: isunique == false
              ? BorderRadius.circular(radius)
              : BorderRadius.circular(radius2),
          borderSide: BorderSide(width: 1, color: Colors.grey.withOpacity(0.1)),
        ),
        border: OutlineInputBorder(
            borderRadius: isunique == false
                ? BorderRadius.circular(radius)
                : BorderRadius.circular(radius2),
            borderSide: const BorderSide(
              width: 1,
            )),
        errorBorder: OutlineInputBorder(
            borderRadius: isunique == false
                ? BorderRadius.circular(radius)
                : BorderRadius.circular(radius2),
            borderSide: const BorderSide(width: 1, color: Colors.white)),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintText: hintTxt,

          fillColor: fillColor,
          
      ),
    );
  }
}