import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constrants.dart';
import 'package:food_delivery_app/screens/homepage.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

late double _height, _width;

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: kprimary,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: _height,
              width: _width,
              child: Stack(
                children: [
                  Container(
                    width: _width,
                    height: _height * 0.4,
                    child: Stack(
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/tomato.jpg",
                            fit: BoxFit.cover,
                          ),
                          color: Colors.green,
                          width: _width,
                          height: _height * 0.4,
                        ),
                        Positioned(
                          top: _height * 0.02,
                          width: _width,
                          child: Container(
                            width: _width,
                            height: _height * 0.08,
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_back_ios_sharp,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (ctx) => HomePage(),
                                      ),
                                    );
                                  },
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.share_outlined,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    height: _height * 0.65,
                    width: _width,
                    child: Container(
                      height: _height * 0.2,
                      width: _width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            height: _height * 0.3,
                            width: _width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: _width / 1.12,
                                  height: _height * 0.1,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: _width * 0.5,
                                        height: _height * 0.09,
                                        child: Text(
                                          "Paradise Hyderabad Biryani",
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontFamily: 'Oswald',
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                          margin: EdgeInsets.only(top: 3),
                                          child: Text(
                                            "\$13.00",
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontFamily: 'Oswald',
                                                color: Colors.orange,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: _width / 1.12,
                                  height: _height * 0.05,
                                  child: Container(
                                    width: _width * 0.5,
                                    height: _height * 0.09,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.location_on_outlined),
                                            Text(
                                              "Hot Coffee, Near Clifton",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontFamily: 'Oswald',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            margin: EdgeInsets.only(top: 3),
                                            child: Card(
                                              elevation: 5,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: Container(
                                                width: _width * 0.08,
                                                decoration: BoxDecoration(
                                                    // color: Colors.greenAccent,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15)),
                                                child: Center(
                                                  child: Transform.rotate(
                                                    angle: 45,
                                                    child: Icon(
                                                      Icons.navigation,
                                                      color: Colors.blue,
                                                      size: 25,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Chip(
                                  labelPadding:
                                      EdgeInsets.symmetric(horizontal: 20),
                                  backgroundColor: kprimary,
                                  label: const Text(
                                    'Food Delivery',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: _height * 0.086,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: double.infinity,
                                        width: _width * 0.28,
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.amber),
                                              width: _width * 0.12,
                                              height: double.infinity,
                                              child: Icon(
                                                Icons.star,
                                                size: 30,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 5, vertical: 5),
                                              width: _width * 0.12,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "4.7",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontFamily: 'Oswald',
                                                        fontWeight:
                                                            FontWeight.w800),
                                                  ),
                                                  Text(
                                                    "Rating",
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        fontFamily: 'Oswald',
                                                        color: Colors.grey,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: double.infinity,
                                        width: _width * 0.28,
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.red[700]),
                                              width: _width * 0.12,
                                              height: double.infinity,
                                              child: Icon(
                                                Icons.favorite,
                                                size: 30,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 5),
                                              width: _width * 0.12,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text(
                                                    "200",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontFamily: 'Oswald',
                                                        fontWeight:
                                                            FontWeight.w800),
                                                  ),
                                                  Text(
                                                    "Like",
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        fontFamily: 'Oswald',
                                                        color: Colors.grey,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: double.infinity,
                                        width: _width * 0.29,
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.black),
                                              width: _width * 0.12,
                                              height: double.infinity,
                                              child: Icon(
                                                Icons.star,
                                                size: 30,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 5, vertical: 5),
                                              width: _width * 0.12,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "24",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontFamily: 'Oswald',
                                                        fontWeight:
                                                            FontWeight.w800),
                                                  ),
                                                  Text(
                                                    "Photo",
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        fontFamily: 'Oswald',
                                                        color: Colors.grey,
                                                        fontWeight:
                                                            FontWeight.w800),
                                                  ),
                                                ],
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
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            width: _width,
                            height: _height * 0.3,
                            child: Column(
                              children: [
                                Container(
                                  child: TabBar(
                                    tabs: [
                                      Tab(
                                          child: Text(
                                        "DETAILS",
                                        style: TextStyle(color: Colors.black),
                                      )),
                                      Tab(
                                          child: Text("PREVIEWS",
                                              style: TextStyle(
                                                  color: Colors.black))),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 5),
                                  height: _height * 0.22,
                                  child: Text(
                                    "This tomato salad couldn’t be easier to make yet it’s one of those side dishes you’d want to polish off yourself – forget the main dish!"
                                    "It’s a great way to use up garden tomatoes, or an opportunity to snag the colorful medley at the grocery store that’s in season during summer."
                                    "If you love tomatoes this is a must try recipe for you!",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontFamily: 'Oswald',
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
