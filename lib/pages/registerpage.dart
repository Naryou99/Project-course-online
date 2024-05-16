// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:projectuts5/pages/landingpage.dart';
import 'package:projectuts5/pages/loginpage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(children: [
        //button back
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            margin: const EdgeInsets.only(left: 25.0),
            child: GestureDetector(
              onTap: () => Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => const LandingPage(),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(Icons.arrow_back),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: Image.network(
              //     'data:image/jpeg;base64,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',
              //     height: 200,
              //   ),
              // ),
              // SizedBox(
              //   height: 20,
              // ),

              //title
              const Text(
                'Lets Get Started!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),

              const SizedBox(
                height: 10,
              ),

              //subtitle
              const Text(
                'Create your account!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: 30,
              ),
              //username
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(11),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.account_box,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Username',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              //email
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(11),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              //phone
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(11),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          ],
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Phone',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              //password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(11),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.password,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //Confirm Password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(11),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.password,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Confirm Password',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              
              //Button login
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue.withOpacity(0.8),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 30,
                        horizontal: 90,
                      ),
                    ),
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ]),
    ));
  }
}
