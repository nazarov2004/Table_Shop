import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import '../ShoppingCardPageBottomBar.dart';
bool _value = false;
bool _value2 = false;

bool hear = false;

class Shoppingcardpage extends StatefulWidget {
  const Shoppingcardpage({super.key});

  @override
  State<Shoppingcardpage> createState() => _ShoppingcardpageState();
}

class _ShoppingcardpageState extends State<Shoppingcardpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(Test1: 'Buy (2)',Test2: '28',),
      backgroundColor: const Color(0xFFFDF5F3),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(child: Text('Shopping Card')),
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
              circleColor:
                  const CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
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
          preferredSize: const Size.fromHeight(40),
          child: CheckboxListTile(
            title: const Text('Select All'),
            controlAffinity: ListTileControlAffinity.leading,
            selected: _value,
            value: _value,
            onChanged: (bool? value) {
              setState(() {
                _value = value!;
              });
            },
          ), //Center
        ),
      ),
      body: ListView(
        children: [
          Column(children: [
            Container(
                margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 6,
                        spreadRadius: 1,
                      )
                    ]),
                child: Column(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    CheckboxListTile(
                      title: Text(FirmaName[0]),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: _value2,
                      activeColor: Colors.orange,
                      onChanged: (bool? value) {
                        setState(() {
                          _value2 = value!;
                        });
                      },
                    ),
                    Thing(ImageIndex: 1, priceThing: 120, ListIndex: 0),
                    const SizedBox(
                      height: 20,
                    ),
                    Thing(ImageIndex: 2, priceThing: 156, ListIndex: 1),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 6,
                        spreadRadius: 1,
                      )
                    ]),
                child: Column(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    CheckboxListTile(
                      title: Text(FirmaName[1]),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: _value2,
                      activeColor: Colors.orange,
                      onChanged: (bool? value) {
                        setState(() {
                          _value2 = value!;
                        });
                      },
                    ),
                    Thing(ImageIndex: 3, priceThing: 21, ListIndex: 2),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 6,
                        spreadRadius: 1,
                      )
                    ]),
                child: Column(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    CheckboxListTile(
                      title: Text(FirmaName[2]),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: _value2,
                      activeColor: Colors.orange,
                      onChanged: (bool? value) {
                        setState(() {
                          _value2 = value!;
                        });
                      },
                    ),
                    Thing(ImageIndex: 4, priceThing: 7, ListIndex: 3),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                )),
          ] //SizedBox],
              ),
        ],
      ),
    );
  }

  List FirmaName = ['Toko Perhiasan', 'Tukang Kayu', 'Jualan Sandangan Ori'];
  List ThingName = [
    'Cincin Tunangan Thanos\n2,5 cm - Gold',
    'Kalung Cinta Si Entong\n15 cm - Silver',
    'Kursi Estetik dengan\nbahan kayu jati',
    'Kaos Polos - All Item\nCotton Combed 24s'
  ];

  Widget Thing(
      {required int ImageIndex,
      required double priceThing,
      required int ListIndex}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            const Checkbox(
              value: true,
              onChanged: null,
              activeColor: Colors.orange,
            ),
            Container(
                height: 65,
                width: 65,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  'assets/shc$ImageIndex.png',
                  fit: BoxFit.fill,
                )),
            const SizedBox(
              width: 18,
            ),
            Text('${ThingName[ListIndex]}\n\$ ${priceThing}'),
            Expanded(
                child: Column(
              children: [
                InkWell(
                    onTap: () {},
                    child: const Icon(Icons.add_circle_outline_rounded)),
                const Text('1'),
                InkWell(
                    onTap: () {},
                    child: const Icon(CupertinoIcons.minus_circle))
              ],
            )),
            for (int i = 0; i == ThingName.length; i++) Container()
          ],
        )
      ],
    );

  }
}
