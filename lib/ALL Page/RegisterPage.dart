import 'package:flutter/material.dart';
import 'package:tableshop/ALL%20Page/RegisterPage2.dart';

class Registerpage extends StatelessWidget {
  const Registerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEA3A60),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/amico.jpg'),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Log in or sign up',
            style: TextStyle(fontSize: 24, color: Color(0xFFFFFFFF)),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'select desire log in methode',
            style: TextStyle(fontSize: 12, color: Color(0xFFFFFFFF)),
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Registerpage2()));
            },
            child: Container(
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
                    'Number Phone',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
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
                  Icons.email,
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  'Email address',
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
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xff009FF5)),
            child: Row(
              children: [
                const SizedBox(
                  width: 16,
                ),
                Image.asset("assets/google.jpg"),
                const SizedBox(
                  width: 16,
                ),
                const Text(
                  'Log in with Google',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
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
