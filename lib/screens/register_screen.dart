import 'package:flutter/material.dart';

import '../components/form_text_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

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
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_rounded,
                        color: Colors.white),
                    padding: EdgeInsets.zero,
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Register",
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Color(0xDDFFFFFF),
                ),
              ),
              const SizedBox(
                height: 24,
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
                      height: 8,
                    ),
                    MyFormTextField(
                      controller: usernameController,
                      hintText: 'Enter your Username',
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 25,
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
                      height: 8,
                    ),
                    MyFormTextField(
                      controller: passwordController,
                      hintText: '**********',
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'Confirm Password',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xDDFFFFFF),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    MyFormTextField(
                      controller: confirmPasswordController,
                      hintText: '**********',
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 40,
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
                          'Register',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.8,
                            color: Color(0xFF979797),
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'or',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF979797),
                            fontFamily: 'Lato',
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.8,
                            color: Color(0xFF979797),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 48,
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
                          height: 17,
                        ),
                        SizedBox(
                          height: 48,
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
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'Already have an account?',
                                  style: TextStyle(
                                    color: Color(0xFF979797),
                                    fontFamily: 'Lato',
                                    fontSize: 13,
                                  ),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/login');
                                  },
                                  child: const Text(
                                    'Login',
                                    style: TextStyle(
                                      color: Color(0xDDFFFFFF),
                                      fontFamily: 'Lato',
                                      fontSize: 13,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}