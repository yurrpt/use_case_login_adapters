import 'package:flutter/material.dart';
import 'package:use_case_social_login_adapters/core/extension/global_exception.dart';

import '../social_adapter.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({super.key, required this.onCompleted, required this.adapter});

  final SocialAdapter adapter;

  final void Function(String token) onCompleted;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () async {
        final res = await GlobalException.make<String>(adapter.make);
        if (res == null || res.isEmpty) {
          // push to login page
        }
        onCompleted.call(res!);
      },
      style: ElevatedButton.styleFrom(backgroundColor: adapter.model.color),
      icon: Icon(adapter.model.icon),
      label: Text(adapter.model.title),
    );
  }
}
