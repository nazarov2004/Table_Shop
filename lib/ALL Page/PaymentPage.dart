import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class Paymentpage extends StatefulWidget {
  const Paymentpage({super.key});

  @override
  State<Paymentpage> createState() => _PaymentpageState();
}

class _PaymentpageState extends State<Paymentpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigator(),
      backgroundColor: const Color(0xFFFFFAF4),
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
        bottom: const PreferredSize(
            preferredSize: Size.fromHeight(30),
            child: Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: Center(
                child: Text('successful pay-on-demand'),
              ),
            ) //Center
            ),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
              child: Column(
                children: [
                  RowMethod(data: 'Price Amount', data1: ''),
                  RowMethod(data: '\$ 30', data1: 'Detail'),
                  RowMethod(data: 'Delivery', data1: ''),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('data'),
                      SizedBox(
                          height: 40,
                          width: 110.39,
                          child: Image.asset(
                            'assets/firmLogo.png',
                            fit: BoxFit.cover,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                  child: RowMethod(data: 'COD', data1: 'Detail'),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 10, top: 20, left: 10, right: 10),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF4F4F4)),
                    child: const Text(
                      '* Pay for your purchases via courier when your order arrives. Learn More\n* Total payment includes COD (Cash on Delivery) service fee.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  RowMethod({required String data, required String data1}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(data),
        Text(
          data1,
          style: const TextStyle(color: Colors.blueAccent),
        ),
      ],
    );
  }

  BottomNavigator() {
    return BottomAppBar(
      color: const Color(0xFFFFFAF4),
      child: InkWell(
        onTap: () {
          showDialog(context: context, builder: (context) => Customerdialog());
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18), color: Colors.orange),
          child: const Center(
            child: Text(
              'Cash on Delivery',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}

class Customerdialog extends StatelessWidget {
  const Customerdialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CloseButton(
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          Image.asset('assets/bro.png'),
          SizedBox(height: 20,),

          const Text(
            'Congratulations, your\ntransaction was successful',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10,),

          const Text(
            'payment successfully verified,\nthank you for shopping',
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Payment Methode',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'COD (Cash on Delivery)\nTotal amount : \$30',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          ButtomColor(
            buttomColor: const Color(0xFFF4F4F4),
            Buttonname: 'Continue Shopping',
            TexColor: Colors.black,
          ),
          const SizedBox(
            height: 10,
          ),
          ButtomColor(
            buttomColor: Colors.orange,
            Buttonname: 'See transaction list',
            TexColor: Colors.white,
          )
        ],
      ),
    );
  }
}

class ButtomColor extends StatelessWidget {
  ButtomColor(
      {super.key,
      required this.buttomColor,
      required this.Buttonname,
      required this.TexColor});
  Color buttomColor;
  String Buttonname;
  Color TexColor;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 260,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: buttomColor),
        child: Center(
            child: Text(
          Buttonname,
          style: TextStyle(color: TexColor, fontSize: 18),
        )));
  }
}
