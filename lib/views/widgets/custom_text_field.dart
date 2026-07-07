import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.hintText, this.maxLines, this.onSaved, this.onChanged});
 final String? hintText;
 final int? maxLines;

  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  @override

  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        onChanged?.call(value);
      },
      onSaved: onSaved,
      validator: (value) {
        if(value?.isEmpty ?? true) {
          return 'This field is required';
        }
        return null;
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        
      hintText: hintText,
      hintStyle: const TextStyle(
        color: kPrimaryColor,
        ),
        border: _buildBorder(),
        enabledBorder: _buildBorder(),
        focusedBorder: _buildBorder(
      kPrimaryColor
        ),
        
      )
    );
  }
  OutlineInputBorder _buildBorder([ color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide:  BorderSide(
        color: color ?? Colors.white,
        width: 1,
      ),
    );
  }
}