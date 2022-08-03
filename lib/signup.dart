import 'package:challenge1/onboarding.dart';
import 'package:challenge1/signup.dart';
import 'package:challenge1/login.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _visible = false;
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 19, right: 21),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => Onboarding()));
                },
                child: Icon(Icons.arrow_back),
              ),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Welcome User',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff484848),
                      fontFamily: 'Lato',
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Icon(
                      Icons.account_circle_rounded,
                      color: Color(0xff025440),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6),
              Text(
                'Sign up to join',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff484848),
                  fontFamily: 'Lato',
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Name',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff484848),
                  fontFamily: 'Lato',
                ),
              ),
              SizedBox(height: 5, width: 374),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Your full name',
                  hintStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff7A7A7A),
                    fontFamily: 'Lato',
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Email',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff484848),
                  fontFamily: 'Lato',
                ),
              ),
              SizedBox(height: 10, width: 374),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Youremail@gmail.com',
                  hintStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff7A7A7A),
                    fontFamily: 'Lato',
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Password',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff484848),
                  fontFamily: 'Lato',
                ),
              ),
              SizedBox(height: 8),
              SizedBox(
                height: 60,
                width: 374,
                child: Container(
                  child: TextFormField(
                    obscureText: _visible,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: '******************** ',
                        labelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff7A7A7A),
                          fontFamily: 'Lato',
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _visible = !_visible;
                            });
                          },
                          icon: _visible
                              ? Icon(
                                  Icons.visibility,
                                )
                              : Icon(
                                  Icons.visibility_off,
                                ),
                        )),
                  ),
                ),
              ),
              SizedBox(height: 6),
              SizedBox(height: 6),
              Text(
                'Confirm Password',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff484848),
                  fontFamily: 'Lato',
                ),
              ),
              SizedBox(height: 8),
              SizedBox(
                height: 60,
                width: 374,
                child: Container(
                  child: TextFormField(
                    obscureText: _visible,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: '********************* ',
                        labelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff7A7A7A),
                          fontFamily: 'Lato',
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _visible = !_visible;
                            });
                          },
                          icon: _visible
                              ? Icon(
                                  Icons.visibility,
                                )
                              : Icon(
                                  Icons.visibility_off,
                                ),
                        )),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Checkbox(
                    activeColor: Color(0xff025440),
                    shape: CircleBorder(),
                    value: _checked,
                    onChanged: (bool? value) {
                      setState(() {
                        _checked = !_checked;
                      });
                    },
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(height: 5),
                            Text(
                              'I agree to the ',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff484848),
                              ),
                            ),
                            Text(
                              'Terms of service ',
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff025440),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
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
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Have an account?',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Lato',
                      color: Color(0xff484848),
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Lato',
                        color: Color(0xff025440),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Center(
                child: Image.asset('assets/images/Rectangle 2.png'),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
