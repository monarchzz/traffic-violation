import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/module/authentication/authentication.dart';
import 'package:flutter_boilerplate/module/change_password/change_password.dart';
import 'package:flutter_boilerplate/module/document/document.dart';
import 'package:flutter_boilerplate/module/home/home.dart';
import 'package:flutter_boilerplate/module/law/law.dart';
import 'package:flutter_boilerplate/module/profile/profile.dart';
import 'package:flutter_boilerplate/module/report/view/report_page.dart';
import 'package:flutter_boilerplate/module/saved/saved.dart';
import 'package:flutter_boilerplate/module/search/search.dart';
import 'package:flutter_boilerplate/module/setting/setting.dart';

mixin AppRoute {
  static Map<String, WidgetBuilder> get routes => {
        RouteName.home: (context) => const HomePage(),
        RouteName.search: (context) => const SearchPage(),
        RouteName.law: (context) => const LawPage(),
        RouteName.profile: (context) => const ProfilePage(),
        RouteName.saved: (context) => const SavedPage(),
        RouteName.setting: (context) => const SettingPage(),
        RouteName.changePassword: (context) => const ChangePasswordPage(),
        RouteName.authentication: (context) => const AuthenticationPage(),
        RouteName.document: (context) => const DocumentPage(),
        RouteName.report: (context) => const ReportPage(),
      };
}

mixin RouteName {
  static const String home = '/home';
  static const String search = '/home/search';
  static const String law = '/law';
  static const String profile = '/home/profile';
  static const String saved = '/home/profile/saved';
  static const String setting = '/home/profile/setting';
  static const String changePassword = '/home/profile/setting/changePassword';
  static const String authentication = '/authentication';
  static const String document = '/document';
  static const String report = '/law/report';
}
