import 'dart:ui';

import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //_timer();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('Assets/3Dobjects/Comet.gif',
            fit: BoxFit.cover,
            height: 500,
            width: 500,
            alignment: Alignment.center,
          ),
          Image.asset('Assets/3Dobjects/kwikCode.gif',
            fit: BoxFit.cover,
            height: 200,
            width: 200,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  _timer() async {
    try {
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushNamedAndRemoveUntil(context, '/Login', (route) => false);
      });
    } catch (e) {
      print(e);
    }
  }
}
