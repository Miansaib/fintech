import 'package:flutter/material.dart';



class CustomTextFormField extends StatelessWidget {
  TextEditingController controller;
  String hint,label;
  CustomTextFormField({ Key? key,required this.controller,required this.hint,required this.label }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value){
        if(value==null){
          return "Please fill this field";
        }
        else
        return null;
      },
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        enabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Colors.greenAccent
          ),
          borderRadius: BorderRadius.all(Radius.circular(18))
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Colors.greenAccent
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Colors.red
          )
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Colors.red
          )
        )

      ),
      
    );
  }
}