import 'dart:async';

import 'package:flutter/material.dart';

import 'dashboard.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Dashboard()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.content_cut_outlined,
              size: 100.0,
              color: Colors.amber[600],
            ),
            SizedBox(
              height: 24.0,
            ),
            Text(
              "BarberBot",
              style: TextStyle(
                color: Colors.amber[600],
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
