import 'package:flutter/material.dart';

class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Text('Forgot Password!',style: TextStyle(fontSize: 18,color: Colors.redAccent),),
      
    );
  }
}