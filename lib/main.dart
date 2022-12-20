import 'package:app_functionality/screens/home.dart';
import 'package:app_functionality/screens/sign_up.dart';
import 'package:flutter/material.dart';

void main() {
  // To hide error screen on Production Mode
  ErrorWidget.builder = (FlutterErrorDetails details) {
    bool isdebug = false;
    assert(() {
      isdebug = true;
      return true;
    }());
    if (isdebug) {
      return ErrorWidget(details.exception);
    }
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Error\n${details.exception}',
        style: const TextStyle(
            color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  };

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
