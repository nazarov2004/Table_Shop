import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DetalsPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(children: [
          Container(
            color: const Color(0xFFEA3A60),
            height: 200,
            width: double.infinity,
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 60, right: 20, left: 20),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    AssetImage('assets/avatar.Jpg'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Hi, Danilla Puspa',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22),
                              )
                            ],
                          ),
                          Icon(
                            CupertinoIcons.shopping_cart,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(right: 20, left: 26, top: 20),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'JL. KRT Pringgodiningrat, Mlati, Kec.\nSleman, Daerah Istimewa Yogyakarta',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            margin: const EdgeInsets.only(right: 20, left: 20, top: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: TextField(
                style: const TextStyle(fontSize: 18),
                decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    prefixIcon: const Icon(
                      Icons.search,
                    ),
                    hintText: "What are you looking for ?",
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.blueAccent, width: 32.0),
                        borderRadius: BorderRadius.circular(25.0)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white.withOpacity(0.8),
                            width: 32.0),
                        borderRadius: BorderRadius.circular(25.0)))),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Detalspage()));
            },
            child: Container(
              height: 190,
              width: 400,
              margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xFFFFD29A), Color(0xFFFF8E00)]),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 30),
                    height: 150,
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Classic\nNoir chair',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xFFFAC90F),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Text(
                                '80% off',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            const Text(
                              'BEST OFFER!!',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 25),
            color: Colors.white,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SingilChildMethod(0),
                  SingilChildMethod(1),
                  SingilChildMethod(2),
                  SingilChildMethod(3),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingilChildMethod2(
                      a: 360,
                      b: 190,
                      c: 5555,
                      name: 'Chair',
                      price: '\$ 12,107'),
                  SingilChildMethod3(a: 250,b:150,price: '\$ 15,217',name: 'Noir Chair',c: 222)
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Container SingilChildMethod(int a) {
    return Container(
        height: 40,
        width: 84,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: const BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 6)
            ]),
        child: Center(
            child: Text(
          strings[a],
          style: const TextStyle(fontSize: 18, color: Colors.white),
        )));
  }

  Container SingilChildMethod2(
      {required double a,
      required double b,
      required double c,
      required String price,
      required String name}) {
    return Container(
        height: a,
        width: b,
        margin: const EdgeInsets.only(left: 20,top: 25),
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/1.png'),
              alignment: Alignment(-1, -1),
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(color: Colors.white, spreadRadius: 1, blurRadius: 6)
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Image.asset('assets/icon.png')),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 15, top: 210),
              child: Text(
                price,
                style:
                    const TextStyle(fontSize: 34, fontWeight: FontWeight.w800),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                name,
                style: const TextStyle(fontSize: 20),
              ),
            )
          ],
        ));
  }

  Container SingilChildMethod3(
      {required double a,
      required double b,
      required double c,
      required String price,
      required String name}) {
    return Container(
        height: a,
        width: b,
        margin: const EdgeInsets.only(top: 25,right: 20),
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/2.png'),
              alignment: Alignment(-1, -1),
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(color: Colors.white, spreadRadius: 1, blurRadius: 6)
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                      margin: const EdgeInsets.all(3),
                      child: Image.asset('assets/icon.png')),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 115,left: 15),
              child: Text(
                price,
                style:
                    const TextStyle(fontSize: 33, fontWeight: FontWeight.w800),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                name,
                style: const TextStyle(fontSize: 20),
              ),
            )
          ],
        ));
  }
}

List strings = ['All', 'Chair', 'Table', 'Lamp'];
