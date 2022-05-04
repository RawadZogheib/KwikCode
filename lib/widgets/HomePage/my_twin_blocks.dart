import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kwikcode/hexColor/hexColor.dart';

class MyTwinBlocks extends StatefulWidget {
  const MyTwinBlocks({Key? key}) : super(key: key);

  @override
  State<MyTwinBlocks> createState() => _MyTwinBlocksState();
}

class _MyTwinBlocksState extends State<MyTwinBlocks>
    with SingleTickerProviderStateMixin {
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
    double width485 = MediaQuery.of(context).size.width * 0.485;
    double height82 = MediaQuery.of(context).size.height * 0.82;
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
            return SizedBox(
              height: height82 + distAnimation.value,
              width: width100 - distAnimation.value,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
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
                      width: width485 - distAnimation.value,
                      color: HexColor('#333333'),
                      child: Image.asset(
                        'Assets/Projects52/web.gif',
                        fit: BoxFit.contain,
                        height: height82,
                        width: width485,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: distAnimation.value,
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(32.0),
                        topLeft: Radius.circular(32.0),
                        bottomRight: Radius.circular(32.0),
                        bottomLeft: Radius.circular(32.0),
                      ),
                      child: Container(
                        height: height82,
                        width: width485 - distAnimation.value,
                        color: HexColor('#333333'),
                        padding: const EdgeInsets.all(8.0),
                        child: const Center(
                          child: Text(
                            ' Computer science involves the study of computation, automation,\n'
                            ' and information. Computer science spanstheoretical disciplines\n '
                            '(such as algorithms, theory of computation, and information theory) \n'
                            ' to practical disciplines (including the design and implementation of\n '
                            'hardware and software). Computer science is generally considered\n'
                            ' [by whom?] an area of academic researchs and distinct from computer \n'
                            ' programming.\n',
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: distAnimation.value,
                  ),
                ],
              ),
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
