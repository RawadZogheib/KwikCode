import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kwikcode/globals/globals.dart' as globals;
import 'package:kwikcode/hexColor/hexColor.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _dist = 0;
  int k = 0;
  int min = Random().nextInt(3) + 2;
  int max = Random().nextInt(7) + 18;
  bool play = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    distAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#101010'),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: BoxDecoration(
              color: HexColor('#222222'),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(12.0),
                bottomLeft: Radius.circular(12.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'Assets/3Dobjects/KwikCodeLogo.png',
                      fit: BoxFit.contain,
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.width * 0.12,
                    ),
                    Text(
                      'KwikCode',
                      style: TextStyle(
                          color: globals.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                  ],
                ),
                // Buttons
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 420,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 45,
                              width: 95,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(9.0),
                              decoration: BoxDecoration(
                                color: HexColor('#cb156f'),
                                borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(22.0),
                                    topLeft: Radius.circular(22.0)),
                              ),
                              child: const Text(
                                'Home',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 85,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(9.0),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(22.0),
                                    topLeft: Radius.circular(22.0)),
                              ),
                              child: Text(
                                'Services',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: HexColor('#222222'),
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 85,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(9.0),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(22.0),
                                  topLeft: Radius.circular(22.0),
                                ),
                              ),
                              child: Text(
                                'Prices',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: HexColor('#222222'),
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 85,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(9.0),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(22.0),
                                    topLeft: Radius.circular(22.0)),
                              ),
                              child: Text(
                                'About',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: HexColor('#222222'),
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: _dist,
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(32.0),
                topLeft: Radius.circular(32.0),
              ),
              child: ListView(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(32.0),
                      topLeft: Radius.circular(32.0),
                      bottomRight: Radius.circular(32.0),
                      bottomLeft: Radius.circular(32.0),
                    ),
                    child: Stack(
                      children: [
                        Image.asset(
                          'Assets/HomePage/background.jpg',
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height * 0.83,
                          width: MediaQuery.of(context).size.width * 1,
                        ),
                        Container(
                          color: Colors.transparent,
                          height: MediaQuery.of(context).size.height * 0.83,
                          width: MediaQuery.of(context).size.width * 1,
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.05,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '  Build a \n     Kwik Code',
                                style: TextStyle(
                                    color: globals.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 90),
                              ),
                              const Text(
                                ' Computer science involves the study of computation, automation,\n'
                                ' and information. Computer science spanstheoretical disciplines\n '
                                '(such as algorithms, theory of computation, and information theory) \n'
                                ' to practical disciplines (including the design and implementation of\n '
                                'hardware and software). Computer science is generally considered\n'
                                ' [by whom?] an area of academic researchs and distinct from computer \n'
                                ' programming.\n',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: _dist,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.82,
                    width: MediaQuery.of(context).size.width * 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(32.0),
                            topLeft: Radius.circular(32.0),
                            bottomRight: Radius.circular(32.0),
                            bottomLeft: Radius.circular(32.0),
                          ),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.82,
                            width: MediaQuery.of(context).size.width * 0.49,
                            color: HexColor('#333333'),
                          ),
                        ),
                        SizedBox(
                          width: _dist,
                        ),
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(32.0),
                            topLeft: Radius.circular(32.0),
                            bottomRight: Radius.circular(32.0),
                            bottomLeft: Radius.circular(32.0),
                          ),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.82,
                            width: MediaQuery.of(context).size.width * 0.49,
                            color: HexColor('#333333'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: _dist,
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(32.0),
                      topLeft: Radius.circular(32.0),
                      bottomRight: Radius.circular(32.0),
                      bottomLeft: Radius.circular(32.0),
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.82,
                      width: MediaQuery.of(context).size.width * 1,
                      color: HexColor('#ffffff'),
                    ),
                  ),
                  SizedBox(
                    height: _dist,
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(32.0),
                      topLeft: Radius.circular(32.0),
                      bottomRight: Radius.circular(32.0),
                      bottomLeft: Radius.circular(32.0),
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.82,
                      width: MediaQuery.of(context).size.width * 1,
                      color: HexColor('#cb156f'),
                    ),
                  ),
                  SizedBox(
                    height: _dist,
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(32.0),
                      topLeft: Radius.circular(32.0),
                      bottomRight: Radius.circular(32.0),
                      bottomLeft: Radius.circular(32.0),
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.82,
                      width: MediaQuery.of(context).size.width * 1,
                      color: HexColor('#222222'),
                    ),
                  ),
                  const SizedBox(
                    height: 2000,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> distAnimation() async {
    Timer timer =
        Timer.periodic(const Duration(milliseconds: 110), (Timer t) async {
      // while (play != false) {
      //   await Future.delayed(const Duration(milliseconds: 100));
      print("110msec gone!!");
      if (k % 2 == 0) {
        if (mounted) {
          setState(() {
            _dist++;
          });
        }
        if (_dist == max) {
          k++;
          min = Random().nextInt(3) + 2;
          //
          print(min);
          //
          // play = false;
          // await Future.delayed(const Duration(milliseconds: 200));
          // play = false;
        }
      } else {
        if (mounted) {
          setState(() {
            _dist--;
          });
        }
        if (_dist == min) {
          k++;
          max = Random().nextInt(7) + 18;
          //
          print(max);
          //
          // play = false;
          // await Future.delayed(const Duration(milliseconds: 200));
          // play = false;
        }
        //}
      }
    });
  }
}
