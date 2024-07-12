import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Bottom.dart';

class Detalspage extends StatefulWidget {
  const Detalspage({super.key});

  @override
  State<Detalspage> createState() => _DetalspageState();
}

class _DetalspageState extends State<Detalspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children:[ Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 350,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/info.png'),
                        fit: BoxFit.cover)),
                width: double.infinity,
                child: Container(
                  padding:
                      const EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white54.withOpacity(0.3)),
                        height: 50,
                        width: 60,
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.arrow_back)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white54.withOpacity(0.3)),
                        height: 50,
                        width: 60,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(CupertinoIcons.heart)),
                      ),
                    ],
                  ),
                )),
            Container(
              padding: const EdgeInsets.only(top: 15, left: 20),
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF2F2F2)),
                    child: const Text('Chair'),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0, top: 15, left: 20),
              child: Text(
                'RELAXING CHAIR',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
              ),
            ),
             Container(
               width: 370,
              padding: const EdgeInsets.only(bottom: 8.0, left: 20),
              child:  const Text(
                'Perfect loveseat, sofa and home theater set for your home. Art object that fit your style. Great quality customizable recliners with easy-action recline. Fine leathers and fabrics.',
                style: TextStyle(
                  fontSize: 15,
                ), textAlign: TextAlign.justify,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0, left: 20),
              child: Text(
                'Variants',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              width: 160,
              padding: const EdgeInsets.only(bottom: 5, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.orange,
                    ),
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10, left: 20),
              width: 370,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(onTap: (){},child:const Icon(Icons.add_circle_outline_rounded)),
                      SizedBox(width: 8,),
                      const Text('01'),
                      SizedBox(width: 8,),

                      InkWell(onTap: (){},child:const Icon(CupertinoIcons.minus_circle)),

                    ],
                  ),
                  const Text('12.017')
                ],
              ),
            )

          ],
        ),
      ]),
      bottomNavigationBar: const Bottombar(),
    );
  }
}
