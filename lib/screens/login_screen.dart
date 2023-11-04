import 'package:flutter/material.dart';

import '../components/form_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF121212),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 45,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      print('Hello');
                    },
                    icon: const Icon(Icons.arrow_back_ios_rounded,
                        color: Colors.white),
                    padding: EdgeInsets.zero,
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Login",
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Color(0xDDFFFFFF),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Username',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xDDFFFFFF),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MyFormTextField(
                      controller: usernameController,
                      hintText: 'Enter your Username',
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Password',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xDDFFFFFF),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MyFormTextField(
                      controller: passwordController,
                      hintText: '**********',
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFF8875FF),
                          ),
                        ),
                        onPressed: () {
                          print('Hello!!!');
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 16,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    width: 145,
                    decoration: const BoxDecoration(
                      color: Color(0xFF979797),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const Text(
                    'or',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF979797),
                      fontFamily: 'Lato',
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Container(
                    height: 1,
                    width: 145,
                    decoration: const BoxDecoration(
                      color: Color(0xFF979797),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: const BorderSide(
                              color: Color(0xFF8875FF), // Border color
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {
                        print("Hello World!");
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('images/google.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Login with Google',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Lato',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: const BorderSide(
                              color: Color(0xFF8875FF), // Border color
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {
                        print("Hello World!");
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('images/apple.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Login with Apple',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Lato',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          color: Color(0xFF979797),
                          fontFamily: 'Lato',
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Register',
                        style: TextStyle(
                          color: Color(0xDDFFFFFF),
                          fontFamily: 'Lato',
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}