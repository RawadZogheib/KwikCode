import 'package:flutter/material.dart';
import 'package:infinite_listview/infinite_listview.dart';
import 'package:kwikcode/hexColor/hexColor.dart';
import 'package:kwikcode/widgets/HomePage/MyHeader.dart';
import 'package:kwikcode/widgets/HomePage/my_first_block.dart';
import 'package:kwikcode/widgets/HomePage/my_twin_blocks.dart';
import 'package:kwikcode/widgets/other/MyCustomScrollBehavior.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<ImageProvider> _imageList = <ImageProvider>[];
  bool _imagePrecached = false;

  final InfiniteScrollController _infiniteController =
      InfiniteScrollController(initialScrollOffset: 0.0);

  final List<String> _assetsList = [
    'Assets/Projects52/PhoneForn.gif',
    'Assets/Projects52/PhoneML.gif',
    'Assets/Projects52/iPhoneML.gif',
    'Assets/Projects52/PhoneKrowl.gif',
  ];

  //double _dist = 0;
  //int k = 0;

  //bool _menuShown = false;

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance
        ?.addPostFrameCallback((_) => updateImageList(context));
    super.initState();
    //distAnimation();
  }

  @override
  Widget build(BuildContext context) {
    double height62 = MediaQuery.of(context).size.height * 0.62;
    double height82 = MediaQuery.of(context).size.height * 0.82;
    double width100 = MediaQuery.of(context).size.width * 1;

    return Scaffold(
        // drawer: NavigationDrawerWidget(),
        backgroundColor: HexColor('#101010'),
        body:
            /////////////////////////////////////
            //Desktop//
            /////////////////////////////////////

            Column(
          children: [
            const MyHeader(),
            // SizedBox(
            //   height: distAnimation.value,
            // ),
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(32.0),
                  topLeft: Radius.circular(32.0),
                ),
                child: SizedBox(
                  // height: height80 + distAnimation.value,
                  // width: width100 - distAnimation.value,
                  child: ScrollConfiguration(
                    behavior: MyCustomScrollBehavior(),
                    child: ListView(
                      children: [
                        const MyFirstBlock(),
                        const MyTwinBlocks(),

                        // SizedBox(
                        //   height: distAnimation.value,
                        // ),
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(32.0),
                            topLeft: Radius.circular(32.0),
                            bottomRight: Radius.circular(32.0),
                            bottomLeft: Radius.circular(32.0),
                          ),
                          child: SizedBox(
                            height: height62,
                            child: ScrollConfiguration(
                              behavior: MyCustomScrollBehavior(),
                              child: InfiniteListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  controller: _infiniteController,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Image.asset(
                                      _assetsList[index % _assetsList.length],
                                      fit: BoxFit.contain,
                                      width: 500,
                                    );
                                  }),
                            ),
                          ),
                        ),

                        // Container(
                        //   height: height82,
                        //   width: width100,
                        //   color: HexColor('#cccccc'),
                        // ),
                        // SizedBox(
                        //   height: distAnimation.value,
                        // ),
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
                        // SizedBox(
                        //   height: distAnimation.value,
                        // ),
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
            ),
          ],
        ));
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

  void updateImageList(BuildContext context) async {
    for (int i = 1; i <= 36; i++) {
      _imageList.add(AssetImage('Assets/Projects52/testProject/img ($i).png'));
      //* To precache images so that when required they are loaded faster.
      await precacheImage(
          AssetImage('Assets/Projects52/testProject/img ($i).png'), context);
    }
    setState(() {
      _imagePrecached = true;
    });
  }
}
