import 'package:flutter/material.dart';
import 'package:tableshop/ALL%20Page/HomePage.dart';

class Registerpage2 extends StatelessWidget {
  const Registerpage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEA3A60),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/cuate.jpg'),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Log in your account',
            style: TextStyle(fontSize: 24, color: Color(0xFFFFFFFF)),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Enter your log in details to\n      access your account',
            style: TextStyle(fontSize: 12, color: Color(0xFFFFFFFF)),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 44,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.white),
            child: const Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.phone,
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  'Username',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 44,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.white),
            child: const Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.key_sharp,
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  'Password',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),

          Container(
            height: 10,
            width: 250,
            child:const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password ?',
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),

          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            },
            child: Container(
              height: 44,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xff009FF5)),
              child: const Center(
                child: Text(
                  'Log in ',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'By registering or skipping this your agree to',
            style: TextStyle(fontSize: 10, color: Color(0xFFFFFFFF)),
          ),
          const SizedBox(
            height: 9,
          ),
          const Text(
            'Terms of Service',
            style: TextStyle(fontSize: 10, color: Color(0xFF0085CC)),
          ),
        ],
      ),
    );
  }
}
