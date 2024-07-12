import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
    const BottomBar({super.key, required this.Test1,required this.Test2});
final String Test1;
final String Test2;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color(0xFFFDF5F3),
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        height: double.infinity,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Column(
              children: [
                const Text(
                  'Total Price',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  '\$$Test2',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Container(
              height: 54,
              width: 120,
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),color: Colors.orange),
              child:  Center(child: Text(Test1,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),))
            )
          ],
        ),
      ),
    );
  }
}


