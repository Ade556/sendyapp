import 'package:challenge1/homepage.dart';
import 'package:flutter/material.dart';
import 'package:challenge1/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _visible = false;
  bool _checked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 22, right: 21),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context,MaterialPageRoute(builder: (context)=>Signup()));
                },
                child: Icon(Icons.arrow_back),
              ),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Welcome Back',
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
                'Sign in to continue',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff484848),
                  fontFamily: 'Lato',
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
              SizedBox(height: 5, width: 374),
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
              SizedBox(height: 5),
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
              TextFormField(
                obscureText: _visible,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: '******************** ',
                  labelStyle: TextStyle(
                    fontSize: 12,
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
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 22),
                  Text(
                    'Forget Password? ',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff025440),
                      fontFamily: 'Lato',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 39),
              Container(
                width: 375,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xff025440),
                ),
                child: Center(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>Homepage()));
                      },
                      child: Text(
                  'Sign in',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffF5F5F5),
                  ),
                ),
                    )),
              ),
              SizedBox(height: 42),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                  Text('or continue with ',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Lato',
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 27),
              Container(
                width: 332,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/icons8-google-32.png'),
                    Text('Sign in to Google',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Lato',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You don’t have an account?',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff484848),
                      fontFamily: 'Lato',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff025440),
                          fontFamily: 'Lato',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 50),
              Center(child: Image.asset('assets/images/Rectangle 2.png')),
            ]),
          ),
        ),
      ),
    );
  }
}
