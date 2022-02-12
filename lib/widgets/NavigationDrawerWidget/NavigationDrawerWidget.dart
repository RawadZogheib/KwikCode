import 'package:flutter/material.dart';
import 'package:kwikcode/hexColor/hexColor.dart';

class NavigationDrawerWidget extends StatefulWidget {
  Animation distAnimation;

  NavigationDrawerWidget({Key? key, required this.distAnimation})
      : super(key: key);

  @override
  _NavigationDrawerWidgetState createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  @override
  Widget build(BuildContext context) {

    double height10 = MediaQuery.of(context).size.height * 0.1;
    double height12 = MediaQuery.of(context).size.height * 0.12;
    double height15 = MediaQuery.of(context).size.height * 0.15;
    double height30 = MediaQuery.of(context).size.height * 0.3;
    double height60 = MediaQuery.of(context).size.height * 0.6;
    double height80 = MediaQuery.of(context).size.height * 0.80;
    double height82 = MediaQuery.of(context).size.height * 0.82;
    double width1 = MediaQuery.of(context).size.width * 0.01;
    double width3 = MediaQuery.of(context).size.width * 0.03;
    double width5 = MediaQuery.of(context).size.width * 0.05;
    double width6 = MediaQuery.of(context).size.width * 0.06;
    double width485 = MediaQuery.of(context).size.width * 0.485;
    double width50 = MediaQuery.of(context).size.width * 0.5;
    double width52 = MediaQuery.of(context).size.width * 0.52;
    double width60 = MediaQuery.of(context).size.width * 0.6;
    double width100 = MediaQuery.of(context).size.width * 1;

    return SizedBox(
      width: width52,
      child: Drawer(
        backgroundColor: Colors.transparent,
        child: Column(
          children: [
            // SizedBox(
            //   height: widget.distAnimation.value,
            //   width: widget.distAnimation.value,
            // ),
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(32.0),
                  topLeft: Radius.circular(32.0),
                ),
                child: Container(
                  height: height10,
                  width: width60,
                  padding: const EdgeInsets.only(left: 10.0),
                  alignment: Alignment.centerLeft,
                  child: Wrap(
                    direction: Axis.horizontal,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(32.0),
                              topLeft: Radius.circular(32.0),
                              bottomRight: Radius.circular(32.0),
                              bottomLeft: Radius.circular(32.0),
                            ),
                            child: Container(
                              color: HexColor('#333333'),
                              height: height60 +
                                      widget.distAnimation.value,
                              width: width50 -
                                  widget.distAnimation.value,
                              padding: EdgeInsets.only(
                                left: width5,
                              ),
                              child: Image.asset(
                                'Assets/3Dobjects/Comet3.gif',
                                fit: BoxFit.contain,
                                height: height12,
                                width: width6,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: widget.distAnimation.value,
                            width: widget.distAnimation.value,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(32.0),
                              topLeft: Radius.circular(32.0),
                              bottomRight: Radius.circular(32.0),
                              bottomLeft: Radius.circular(32.0),
                            ),
                            child: Container(
                              height: height30 +
                                  widget.distAnimation.value,
                              width: width50 -
                                  widget.distAnimation.value,
                              color: HexColor('#f3f3f3'),
                            ),
                          ),
                          SizedBox(
                            height: widget.distAnimation.value,
                            width: widget.distAnimation.value,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
