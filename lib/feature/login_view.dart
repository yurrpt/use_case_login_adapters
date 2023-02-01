import 'package:flutter/material.dart';
import 'package:use_case_social_login_adapters/core/components/social_login_button.dart';
import 'package:use_case_social_login_adapters/core/social_adapter.dart';

class LoginViewDemo extends StatefulWidget {
  const LoginViewDemo({super.key});

  @override
  State<LoginViewDemo> createState() => _LoginViewDemoState();
}

class _LoginViewDemoState extends State<LoginViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SocialLoginButton(
            onCompleted: (token) {},
            adapter: FacebookAdapter(),
          ),
          SocialLoginButton(
            onCompleted: (token) {},
            adapter: GoogleAdapter(),
          ),
          SocialLoginButton(
            onCompleted: (token) {},
            adapter: AppleAdapter(),
          ),
        ],
      ),
    );
  }
}
