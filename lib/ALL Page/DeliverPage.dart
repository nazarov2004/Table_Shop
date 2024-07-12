import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:tableshop/SomeThing.dart';

import '../ShoppingCardPageBottomBar.dart';


class Deliverpage extends StatefulWidget {
  const Deliverpage({super.key});

  @override
  State<Deliverpage> createState() => _DeliverpageState();
}

class _DeliverpageState extends State<Deliverpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(child: Text('Delivery')),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            //Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: LikeButton(
              circleColor: const CircleColor(
                  start: Color(0xff00ddff), end: Color(0xff0099cc)),
              bubblesColor: const BubblesColor(
                  dotPrimaryColor: Colors.redAccent,
                  dotThirdColor: Color(0xfffa0101),
                  dotSecondaryColor: Colors.redAccent),
              likeBuilder: (hear) {
                return Icon(
                  CupertinoIcons.heart,
                  color: hear ? Colors.red : Colors.black,
                );
              },
            ),
          )
        ],
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Mailing address'),
                      InkWell(
                          onTap: () {},
                          child: const Text(
                            'Choose another address',
                            style: TextStyle(
                              color: Colors.blueAccent,
                            ),
                            textAlign: TextAlign.justify,
                          )),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                  child: Text(
                      'JL. KRT Pringgodiningrat No.4 Pangukan, Tridadi, Mlati, Kec. Sleman, Daerah Istimewa Yogyakarta'),
                )
              ],
            ) //Center
            ),
      ),
      bottomNavigationBar: BottomBar(
        Test1: 'Next',
        Test2: '30',
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Something(),
              const SizedBox(
                height: 10,
              ),
              Something(),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          spreadRadius: 2,
                          offset: Offset(0, 5))
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.asset(
                            'assets/CarIcon.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          'Select Delivery',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        CupertinoIcons.chevron_forward,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 160,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    color: Colors.white,
                    child: Column(
                      children: [
                        const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Subtotal',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '\$ 30',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ]),
                        const SizedBox(
                          height: 20,
                        ),
                        NewWidget(
                            birinchi: 'Kursi Estetik (1)', Ikkinchi: '\$ 21'),
                        NewWidget(birinchi: 'Kaos Polos (1)', Ikkinchi: '\$ 7'),
                        NewWidget(birinchi: 'Delivery', Ikkinchi: '\$ 2')
                      ],
                    ),
                  )),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          spreadRadius: 2,
                          offset: Offset(0, 5))
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Payment Methode',
                      style: TextStyle(fontSize: 16),
                    ),
                    Row(
                      children: [
                        const Text(
                          'Choose',
                          style:
                              TextStyle(fontSize: 16, color: Colors.blueAccent),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Icon(
                            CupertinoIcons.chevron_forward,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  NewWidget({required String birinchi, required String Ikkinchi}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          birinchi,
          style: const TextStyle(fontSize: 16),
        ),
        Text(Ikkinchi),
      ],
    );
  }
}
