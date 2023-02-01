import 'package:flutter/material.dart';

abstract class SocialAdapter {
  Future<String?> make();
  AdapterModel get model;
}

class AdapterModel {
  final String title;
  final Color color;
  final IconData icon;

  AdapterModel({required this.title, required this.color, required this.icon});

  factory AdapterModel.facebook() => AdapterModel(title: 'Facebook', color: Colors.red, icon: Icons.facebook);
  factory AdapterModel.google() => AdapterModel(title: 'Google', color: Colors.yellow, icon: Icons.g_mobiledata);
  factory AdapterModel.apple() => AdapterModel(title: 'Apple', color: Colors.grey, icon: Icons.apple);
}

class FacebookAdapter implements SocialAdapter {
  @override
  Future<String?> make() async {
    throw Exception('Facebook is not supported this device');
  }

  @override
  final AdapterModel model = AdapterModel.facebook();
}

class GoogleAdapter implements SocialAdapter {
  @override
  Future<String> make() async {
    return toString();
  }

  @override
  final AdapterModel model = AdapterModel.google();
}

class AppleAdapter implements SocialAdapter {
  @override
  Future<String> make() async {
    return toString();
  }

  @override
  final AdapterModel model = AdapterModel.apple();
}
