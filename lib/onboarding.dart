import 'package:challenge1/login.dart';
import 'package:flutter/material.dart';

import 'signup.dart';

class Onboarding extends StatelessWidget {
  const Onboarding ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 44),
            const Text(
              'Welcome to Sendy.',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Lato',
                  color: Color(0xff484848)),
            ),
            SizedBox(height: 10),
            Image.asset('assets/images/rafiki.png'),
            SizedBox(height: 20),
            Text(
              'Manage your Finance in\n the easiest way',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Lato'),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signup()));
                },
                child: Container(
                  width: 374,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff025440),
                  ),
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Lato',
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 90),
                Text(
                  'Have an account?',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Lato',
                  ),
                ),
                TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                  },
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Lato',
                      color: Color(0xff025440),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Center(
              child: Image.asset('assets/images/Rectangle 2.png'),
            ),
          ],
        ),
      ),
    ));
  }
}
