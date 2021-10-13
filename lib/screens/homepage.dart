import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constrants.dart';
import 'package:food_delivery_app/widgets/detail_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

late double _height, _width;

class _HomePageState extends State<HomePage> {
  Widget _buildRecommeded(
      {required String name, required String price, required String imageUrl}) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      height: _height * 0.25,
      width: _width * 0.23,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              )),
              height: _height * 0.08,
              width: _width * 0.23,
              child: Column(
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Oswald',
                        color: kprimary,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\$${price}",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Oswald',
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              height: _height * 0.135,
              width: _width * 0.23,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              )),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                child: Image.asset(
                  "${imageUrl}",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  var categories = [
    {
      "imgUrl": "assets/pepper.png",
      "name": "Vegetarian Series",
    },
    {
      "imgUrl": "assets/chickentikka.png",
      "name": "Chicken Tikka",
    },
    {
      "imgUrl": "assets/cake.png",
      "name": "Desert Series",
    }
  ];

  Widget _buildMain({required String name, required String imageUrl}) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(
          top: _height * 0.01,
          left: _width * 0.05,
          right: _width * 0.05,
        ),
        height: _height * 0.28,
        width: _width * .91,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: _height * 0.28,
                      width: _width * 0.5,
                      // color: Colors.green,
                      child: Image.asset(
                        "${imageUrl}",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  width: _width * 0.5,
                  // color: Colors.blue,
                  height: _height * 0.2,
                  child: name.length < 14
                      ? Text(
                          name,
                          style: TextStyle(
                              fontSize: 32,
                              fontFamily: 'Oswald',
                              color: kprimary,
                              fontWeight: FontWeight.w500),
                        )
                      : Text(
                          name,
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Oswald',
                              color: kprimary,
                              fontWeight: FontWeight.w500),
                        ),
                ),
              ),
              Align(
                alignment: Alignment(0.8, -1),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: _width * 0.2,
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                    child: Text(
                      "\$75",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Oswald',
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-1, 0.08),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      side: BorderSide(color: Colors.red)))),
                      child: Text("More")),
                ),
              ),
              Align(
                alignment: Alignment(0, 2.3),
                child: Container(
                  width: _width * 0.8,
                  height: _height * 0.17,
                  child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Organic vegetable set",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'Oswald',
                                    color: kprimary,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "salad dressing, whipped ...",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Oswald',
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w300),
                              ),
                              Divider(
                                color: Colors.black,
                                height: 10,
                              ),
                              Container(
                                // color: Colors.blue,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: _height * 0.04,
                                      width: _width * 0.23,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amberAccent,
                                            size: 30,
                                          ),
                                          Text(
                                            "4.8",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: 'Oswald',
                                                color: kprimary,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          Text(
                                            "(285)",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: 'Oswald',
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: _height * 0.04,
                                      width: _width * 0.23,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.deck),
                                          Text(
                                            "168",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: 'Oswald',
                                                color: kprimary,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          Text(
                                            "Kcal",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontFamily: 'Oswald',
                                                color: Colors.black54,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: _height * 0.04,
                                      width: _width * 0.18,
                                      // color: Colors.green,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.access_alarm_outlined),
                                          Text(
                                            "10",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Oswald',
                                                color: kprimary,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          Text(
                                            "min",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Oswald',
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ]),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  int index = 1;
  List<String> dishes = [
    "Pizza",
    "Burger",
    "Salad",
    "Cake",
    "Beverage",
    "Salad",
    "Broast"
  ];
  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kprimary,
      bottomNavigationBar: SafeArea(
        child: CurvedNavigationBar(
          height: _height * 0.07,
          backgroundColor: kprimary,
          buttonBackgroundColor: Colors.amber,
          items: [
            Icon(
              Icons.house_outlined,
              size: 30,
              color: index == 0 ? Colors.white : kprimary,
            ),
            Icon(
              Icons.shopping_cart,
              size: 30,
              color: index == 1 ? Colors.white : kprimary,
            ),
            Icon(
              Icons.person_outlined,
              size: 30,
              color: index == 2 ? Colors.white : kprimary,
            ),
            Icon(
              Icons.dining_outlined,
              size: 30,
              color: index == 3 ? Colors.white : kprimary,
            ),
          ],
          index: index,
          onTap: (index) {
            setState(() {
              this.index = index;
            });
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, left: 15, right: 15),
              width: _width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "MON, 29 SEP",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'Oswald'),
                  ),
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shopping_cart,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                children: [
                  Text(
                    "Programs",
                    style: TextStyle(
                      fontSize: 35,
                      fontFamily: 'Oswald',
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: _width,
              height: _height * 0.05,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dishes.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        dishes[index],
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Oswald',
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    );
                  }),
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: _height * 0.6828,
                    color: Colors.white,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: _height * 0.2,
                        decoration: BoxDecoration(
                          color: kprimary,
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.elliptical(
                                  MediaQuery.of(context).size.width, 100.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  // color: Colors.blue,
                  height: _height * 0.35,
                  // width: _width * 0.98,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) => DetailScreen(),
                              ),
                            );
                          },
                          child: _buildMain(
                              name: categories[index]["name"].toString(),
                              imageUrl: categories[index]["imgUrl"].toString()),
                        );
                      }),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(
                        top: _height * 0.28, left: 15, right: 15),
                    height: _height * 0.2,
                    width: _width,
                    // color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recommended",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Oswald',
                              color: kprimary,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Oswald',
                              color: kprimary,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    // color: Colors.blue,
                    margin: EdgeInsets.only(
                        top: _height * 0.4, left: 15, right: 15),
                    width: _width,
                    height: _height * 0.25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildRecommeded(
                            name: "Vegan",
                            price: "25",
                            imageUrl: "assets/vegan.jpg"),
                        _buildRecommeded(
                            name: "Organic",
                            price: "13",
                            imageUrl: "assets/organic.jpg"),
                        _buildRecommeded(
                            name: "Tomato",
                            price: "30",
                            imageUrl: "assets/tomato.jpg"),
                        Container(
                          height: _height * 0.25,
                          width: _width * 0.23,
                          child: Card(
                            elevation: 3,
                            color: Colors.amberAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Text(
                                "More",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Oswald',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
