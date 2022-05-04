import 'package:flutter/material.dart';
import 'package:kwikcode/hexColor/hexColor.dart';
import 'package:kwikcode/globals/globals.dart' as globals;

class MyHeader extends StatelessWidget {
  const MyHeader({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    double height12 = MediaQuery.of(context).size.height * 0.12;
    double height15 = MediaQuery.of(context).size.height * 0.15;
    double width3 = MediaQuery.of(context).size.width * 0.03;
    double width6 = MediaQuery.of(context).size.width * 0.06;
    return Container(
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
                height: height12,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(28.0),
                                topLeft: Radius.circular(28.0)),
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
                            borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(28.0),
                                topLeft: Radius.circular(28.0)),
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
                            borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(28.0),
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
                            borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(28.0),
                                topLeft: Radius.circular(28.0)),
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
                            borderRadius: const BorderRadius.only(
                                bottomRight: Radius.circular(28.0),
                                topLeft: Radius.circular(28.0)),
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
    );
  }
}
