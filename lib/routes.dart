import 'package:delivery_app/src/features/presentation/forgot_password/view/forgot_password.dart';
import 'package:delivery_app/src/features/presentation/login_page/view/login_page.dart';
import 'package:delivery_app/src/features/presentation/register_page/view/register_page.dart';
import 'package:delivery_app/src/features/presentation/tabs/tab_page.dart';
import 'package:delivery_app/src/features/presentation/welcome_page/view/welcome_page.dart';
import 'package:flutter/material.dart';

final routes = <String, WidgetBuilder>{
  'Welcome': (BuildContext context) => WelcomePage(),
  'Login': (BuildContext context) => LoginPage(),
  'Forgot': (BuildContext context) => ForgotPassword(),
  'Register': (BuildContext context) => RegisterPage(),
  'Tabs': (BuildContext context) => TabPage()
};//La variable no cambia