import 'package:fintech/Constants/Colors.dart';
import 'package:fintech/Custom%20Widgets/Custom_TextFormField.dart';
import 'package:fintech/Custom%20Widgets/ForgotPasswordText.dart';
import 'package:flutter/material.dart';

import '../../Constants/ContainerShadow.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          gradient: splashScreenGradient,
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.only(left: 80, right: 80),
            height: size.height * 0.7,
            width: size.width * 0.28,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black),
                boxShadow: [ContainerShadow().containerShadow],
                color: Color(0xffEDFBF2),
                borderRadius: BorderRadius.circular(61)),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(width: 100, image: AssetImage('Assets/PNG/as.png')),
                  CustomTextFormField(
                      controller: emailController,
                      hint: 'Email',
                      label: 'Email'),
                  CustomTextFormField(
                      controller: passwordController,
                      hint: 'Password',
                      label: 'Password'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ForgotPasswordText(),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
