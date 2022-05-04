import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kwikcode/globals/globals.dart' as globals;

class MyFirstBlock extends StatefulWidget {
  const MyFirstBlock({Key? key}) : super(key: key);

  @override
  State<MyFirstBlock> createState() => _MyFirstBlockState();
}

class _MyFirstBlockState extends State<MyFirstBlock>
    with TickerProviderStateMixin {
  int min = Random().nextInt(3) + 4;
  int max = Random().nextInt(5) + 15;

  AnimationController? animationController;
  int _k = 0;
  final int _animationDuration = 4;
  late Animation distAnimation = Tween(begin: 4.0, end: 20.0).animate(
      CurvedAnimation(parent: animationController!, curve: Curves.easeIn));

  late Timer _timer;

  @override
  void initState() {
    // TODO: implement initState
    _distAnimation();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController?.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height80 = MediaQuery.of(context).size.height * 0.80;
    double width5 = MediaQuery.of(context).size.width * 0.05;
    double width100 = MediaQuery.of(context).size.width * 1;

    if (_k % 2 == 0) {
      animationController!.forward();
    } else {
      animationController!.reverse();
    }
    return AnimatedBuilder(
        animation: animationController!,
        builder: (BuildContext context, widget) {
          return Builder(builder: (context) {
            return Column(
              children: [
                SizedBox(
                  height: distAnimation.value,
                ),
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
                          'Assets/HomePage/background.jpg',
                          fit: BoxFit.cover,
                          height: height80 + distAnimation.value,
                          width: width100 * 1 - distAnimation.value,
                        ),
                        Container(
                          color: Colors.transparent,
                          height: height80 + distAnimation.value,
                          width: width100 - distAnimation.value,
                          padding: EdgeInsets.only(
                            left: width5,
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
                ),
                SizedBox(
                  height: distAnimation.value,
                ),
              ],
            );
          });
        });
  }

  void _distAnimation() {
    animationController = AnimationController(
        vsync: this, duration: Duration(seconds: _animationDuration));
    _timer =
        Timer.periodic(Duration(seconds: _animationDuration), (Timer t) async {
      setState(() {
        _k++;
        print('$_animationDuration Second');
      });
    });
  }
}
