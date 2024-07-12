
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
bool _value2 = false;

class Something extends StatefulWidget {

   Something({super.key,});
  @override
  State<Something> createState() => _SomethingState();
}

class _SomethingState extends State<Something> {
  late bool test=true;
  @override
  Widget build(BuildContext context) {
    return test?  Container(
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
        )):
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
        ));
  }
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
          ],
        )
      ],
    );
  }
}


List ThingName = [
  'Cincin Tunangan Thanos\n2,5 cm - Gold',
  'Kalung Cinta Si Entong\n15 cm - Silver',
  'Kursi Estetik dengan\nbahan kayu jati',
  'Kaos Polos - All Item\nCotton Combed 24s'
];
List FirmaName = ['Toko Perhiasan', 'Tukang Kayu', 'Jualan Sandangan Ori'];


