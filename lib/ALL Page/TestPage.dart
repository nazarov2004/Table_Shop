import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Bottom.dart';

bool Test = false;

class Testpage extends StatefulWidget {
  Testpage({
    super.key,
  });

  @override
  State<Testpage> createState() => _TestpageState();
}

class _TestpageState extends State<Testpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset('assets/info.png'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buttonArrow1(context),
              buttonArrow(context),
            ],
          ),
          scrol(context)
        ],
      ),
          bottomNavigationBar: Bottombar(),
    ));
  }

  scrol(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.4,
        maxChildSize: 1,
        minChildSize: 0.4,
        builder: (context, scrolControler) {
          return SingleChildScrollView(
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                  margin: EdgeInsets.only(right: 20,left: 20),
                  padding: const EdgeInsets.only(bottom: 8.0,),
                  child:  const Text(
                    'Perfect loves eat, sofa and home theater set for your home. Art object that fit your style. Great quality customizable recliners with easy-action recline. Fine leathers and fabrics.',
                    style: TextStyle(
                      fontSize: 15,
                    ), textAlign: TextAlign.justify,
                  ),
                ),
                ListView.builder(
                shrinkWrap:true,
                itemCount:3,
                itemBuilder: (context, indext)=> Ingdrec(context)),
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
                          const SizedBox(width: 8,),
                          const Text('01'),
                          const SizedBox(width: 8,),

                          InkWell(onTap: (){},child:const Icon(CupertinoIcons.minus_circle)),

                        ],
                      ),
                      const Text('12.017',style: TextStyle(color: Colors.black,fontSize: 18),)
                    ],
                  ),
                )
              ],),
            ),
          );
        });
  }
  Ingdrec(context){
return Container(
);
  }


  buttonArrow(context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
          clipBehavior: Clip.hardEdge,
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      Test = !Test;
                    });
                  },
                  icon: Test
                      ? const Icon(
                          CupertinoIcons.heart_fill,
                          color: Colors.red,
                        )
                      : const Icon(CupertinoIcons.heart)),
            ),
          )),
    );
  }

  buttonArrow1(context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
          clipBehavior: Clip.hardEdge,
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 20,
                  )),
            ),
          )),
    );
  }
}
