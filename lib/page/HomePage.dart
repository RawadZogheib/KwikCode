import 'package:flutter/material.dart';
import 'package:kwikcode/globals/globals.dart' as globals;
import 'package:kwikcode/hexColor/hexColor.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#222222'),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.12,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'Assets/3Dobjects/KwikCode.png',
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height * 0.09,
                      width: MediaQuery.of(context).size.width * 0.09,
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
                                color: HexColor('#8848f7'),
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(22.0),
                                  topLeft: Radius.circular(22.0)
                                ),
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
                                    topLeft: Radius.circular(22.0)
                                ),
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
                                    topLeft: Radius.circular(22.0)
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
                                    topLeft: Radius.circular(22.0)
                                ),
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
          Expanded(
            child: ListView(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'Assets/HomePage/background.jpg',
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height * 0.88,
                      width: MediaQuery.of(context).size.width * 1,
                    ),
                    Container(
                      color: Colors.transparent,
                      height: MediaQuery.of(context).size.height * 0.88,
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
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 2000,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
