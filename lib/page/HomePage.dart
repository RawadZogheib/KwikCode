import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kwikcode/globals/globals.dart' as globals;
import 'package:kwikcode/hexColor/hexColor.dart';
import 'package:kwikcode/widgets/NavigationDrawerWidget/NavigationDrawerWidget.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  //double _dist = 0;
  //int k = 0;
  int min = Random().nextInt(3) + 4;
  int max = Random().nextInt(5) + 15;

  AnimationController? animationController;
  int _k = 0;
  final int _animationDuration = 4;

  //bool _menuShown = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //distAnimation();
    _distAnimation();
  }

  @override
  Widget build(BuildContext context) {

    double height12 = MediaQuery.of(context).size.height * 0.12;
    double height15 = MediaQuery.of(context).size.height * 0.15;
    double height80 = MediaQuery.of(context).size.height * 0.80;
    double height82 = MediaQuery.of(context).size.height * 0.82;
    double width1 = MediaQuery.of(context).size.width * 0.01;
    double width3 = MediaQuery.of(context).size.width * 0.03;
    double width5 = MediaQuery.of(context).size.width * 0.05;
    double width6 = MediaQuery.of(context).size.width * 0.06;
    double width485 = MediaQuery.of(context).size.width * 0.485;
    double width100 = MediaQuery.of(context).size.width * 1;

    Animation distAnimation = Tween(begin: 4.0, end: 20.0).animate(
        CurvedAnimation(parent: animationController!, curve: Curves.easeIn));
    if (_k % 2 == 0) {
      animationController!.forward();
    } else {
      animationController!.reverse();
    }
    return AnimatedBuilder(
        animation: animationController!,
        builder: (BuildContext context, Widget) {
          return Scaffold(
            drawer: NavigationDrawerWidget(distAnimation: distAnimation),
            backgroundColor: HexColor('#101010'),
            body:
              /////////////////////////////////////
              //Desktop//
              /////////////////////////////////////
              Builder(builder: (context) {
                return Column(
                  children: [
                    Container(
                      height: height15,
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
                              const SizedBox(
                                width: 20,
                              ),
                              Image.asset(
                                'Assets/3Dobjects/KwikCodeLogo.png',
                                fit: BoxFit.contain,
                                height:height12,
                                width: width6,
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
                          // TabBar Buttons
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  width: 520,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height: 48,
                                          width: 95,
                                          alignment: Alignment.center,
                                          padding: const EdgeInsets.all(9.0),
                                          decoration: BoxDecoration(
                                            color: HexColor('#cb156f'),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(28.0),
                                                    topLeft:
                                                        Radius.circular(28.0)),
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
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height: 40,
                                          width: 90,
                                          alignment: Alignment.center,
                                          padding: const EdgeInsets.all(9.0),
                                          decoration: BoxDecoration(
                                            color: HexColor('#ffffff'),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(28.0),
                                                    topLeft:
                                                        Radius.circular(28.0)),
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
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height: 40,
                                          width: 85,
                                          alignment: Alignment.center,
                                          padding: const EdgeInsets.all(9.0),
                                          decoration: BoxDecoration(
                                            color: HexColor('#ffffff'),
                                            borderRadius:
                                                const BorderRadius.only(
                                              bottomRight:
                                                  Radius.circular(28.0),
                                              topLeft: Radius.circular(28.0),
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
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height: 40,
                                          width: 85,
                                          alignment: Alignment.center,
                                          padding: const EdgeInsets.all(9.0),
                                          decoration: BoxDecoration(
                                            color: HexColor('#ffffff'),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(28.0),
                                                    topLeft:
                                                        Radius.circular(28.0)),
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
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Scaffold.of(context).openDrawer();
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 85,
                                          alignment: Alignment.center,
                                          padding: const EdgeInsets.all(9.0),
                                          decoration: BoxDecoration(
                                            color: HexColor('#ffffff'),
                                            borderRadius:
                                                const BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(28.0),
                                                    topLeft:
                                                        Radius.circular(28.0)),
                                          ),
                                          child: const Center(
                                            child: Icon(
                                              Icons.menu,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: width3,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: distAnimation.value,
                    ),
                    // SizedBox(
                    //   height: _dist,
                    // ),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(32.0),
                          topLeft: Radius.circular(32.0),
                        ),
                        child: SizedBox(
                          height: height80 +
                              distAnimation.value,
                          width: width100 -
                              distAnimation.value,
                          child: ListView(
                            children: [
                              Center(
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(32.0),
                                    topLeft: Radius.circular(32.0),
                                    bottomRight: Radius.circular(32.0),
                                    bottomLeft: Radius.circular(32.0),
                                  ),
                                  child: Stack(
                                    children: [
                                      Image.asset(
                                        'Assets/HomePage/background.gif',
                                        fit: BoxFit.cover,
                                        height:height80 +
                                                distAnimation.value,
                                        width: width100 *
                                                    1 -
                                                distAnimation.value,
                                      ),
                                      Container(
                                        color: Colors.transparent,
                                        height: height80 +
                                                distAnimation.value,
                                        width: width100 -
                                                distAnimation.value,
                                        padding: EdgeInsets.only(
                                          left: width5,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 20),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: distAnimation.value,
                              ),
                              SizedBox(
                                height: height82,
                                width: width100,
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
                                        height: height82,
                                        width: width485,
                                        color: HexColor('#333333'),
                                        child: Image.asset(
                                          'Assets/3Dobjects/Comet3.gif',
                                          fit: BoxFit.contain,
                                          height: height12,
                                          width: width6,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: distAnimation.value,
                                    ),
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(32.0),
                                        topLeft: Radius.circular(32.0),
                                        bottomRight: Radius.circular(32.0),
                                        bottomLeft: Radius.circular(32.0),
                                      ),
                                      child: Container(
                                        height: height82,
                                        width: width485,
                                        color: HexColor('#333333'),
                                        child: const Center(
                                          child: Text(
                                            ' Computer science involves the study of computation, automation,\n'
                                            ' and information. Computer science spanstheoretical disciplines\n '
                                            '(such as algorithms, theory of computation, and information theory) \n'
                                            ' to practical disciplines (including the design and implementation of\n '
                                            'hardware and software). Computer science is generally considered\n'
                                            ' [by whom?] an area of academic researchs and distinct from computer \n'
                                            ' programming.\n',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: distAnimation.value,
                              ),
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(32.0),
                                  topLeft: Radius.circular(32.0),
                                  bottomRight: Radius.circular(32.0),
                                  bottomLeft: Radius.circular(32.0),
                                ),
                                child: Container(
                                  height: height82,
                                  width: width100,
                                  color: HexColor('#cccccc'),
                                ),
                              ),
                              SizedBox(
                                height: distAnimation.value,
                              ),
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(32.0),
                                  topLeft: Radius.circular(32.0),
                                  bottomRight: Radius.circular(32.0),
                                  bottomLeft: Radius.circular(32.0),
                                ),
                                child: Container(
                                  height: height82,
                                  width: width100,
                                  color: HexColor('#cb156f'),
                                ),
                              ),
                              SizedBox(
                                height: distAnimation.value,
                              ),
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(32.0),
                                  topLeft: Radius.circular(32.0),
                                  bottomRight: Radius.circular(32.0),
                                  bottomLeft: Radius.circular(32.0),
                                ),
                                child: Container(
                                  height: height82,
                                  width: width100,
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
                    ),
                  ],
                );
              }),
          );
        });
  }

  // Future<void> distAnimation() async {
  //   Timer timer =
  //       Timer.periodic(const Duration(milliseconds: 60), (Timer t) async {
  //     // while (play != false) {
  //     //   await Future.delayed(const Duration(milliseconds: 100));
  //     print("60msec gone!!");
  //     if (k % 2 == 0) {
  //       if (mounted) {
  //         setState(() {
  //           _dist += 0.25;
  //         });
  //       }
  //       if (_dist == max) {
  //         k++;
  //         min = Random().nextInt(3) + 4;
  //         //
  //         print(min);
  //         //
  //         // play = false;
  //         // await Future.delayed(const Duration(milliseconds: 200));
  //         // play = false;
  //       }
  //     } else {
  //       if (mounted) {
  //         setState(() {
  //           _dist -= 0.25;
  //         });
  //       }
  //       if (_dist == min) {
  //         k++;
  //         max = Random().nextInt(5) + 15;
  //         //
  //         print(max);
  //         //
  //         // play = false;
  //         // await Future.delayed(const Duration(milliseconds: 200));
  //         // play = false;
  //       }
  //       //}
  //     }
  //   });
  // }

  void _distAnimation() {
    animationController = AnimationController(
        vsync: this, duration: Duration(seconds: _animationDuration));
    Timer.periodic(Duration(seconds: _animationDuration), (Timer t) async {
      setState(() {
        _k++;
        print('$_animationDuration Second');
      });
    });
  }
}
