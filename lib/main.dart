import 'package:delivery_app/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: false
      ),
      title: 'Material App',
      routes: routes,
      initialRoute: 'Welcome',
    );
  }
}
