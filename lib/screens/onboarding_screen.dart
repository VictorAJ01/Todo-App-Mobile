import 'package:flutter/material.dart';

import 'onboarding_screen_data.dart';
import 'welcome_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const WelcomeScreen(),
                    ),
                  );
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.zero), // Remove padding
                  alignment: Alignment.centerLeft, // Align text to the left
                ),
                child: const Text(
                  'SKIP',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0x70FFFFFF),
                    fontSize: 16,
                    fontFamily: 'Lato',
                  ),
                ),
              ),
              Expanded(
                child: PageView.builder(
                    controller: _controller,
                    itemCount: contents.length,
                    onPageChanged: (int index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    itemBuilder: (content, index) {
                      return Column(
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Image(
                            image: AssetImage(contents[index].image),
                            height: 300,
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(contents.length,
                                (index) => activeDot(index, context)),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Text(
                            contents[index].title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.bold,
                              color: Color(0xDDFFFFFF),
                              fontSize: 32,
                            ),
                          ),
                          const SizedBox(
                            height: 42,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                            ),
                            child: Text(
                              contents[index].description,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xDDFFFFFF),
                                  fontSize: 16),
                            ),
                          )
                        ],
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: currentIndex == 0
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.spaceBetween,
                children: [
                  if (currentIndex > 0)
                    TextButton(
                      onPressed: () {
                        print('Hello');
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.zero), // Remove padding
                        alignment:
                            Alignment.centerLeft, // Align text to the left
                      ),
                      child: const Text(
                        'BACK',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color(0x70FFFFFF),
                          fontSize: 16,
                          fontFamily: 'Lato',
                        ),
                      ),
                    ),
                  SizedBox(
                    height: 45,
                    width: currentIndex == contents.length - 1 ? 125 : 80,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF8875FF),
                        ),
                      ),
                      onPressed: () {
                        if (currentIndex == contents.length - 1) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const WelcomeScreen(),
                            ),
                          );
                        }
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 100),
                          curve: Curves.bounceIn,
                        );
                      },
                      child: Text(
                        currentIndex == contents.length - 1
                            ? "GET STARTED"
                            : "NEXT",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Lato',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  Container activeDot(int index, BuildContext context) {
    return Container(
      height: 5,
      width: 30,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? const Color(0xDDFFFFFF) : Colors.grey,
      ),
    );
  }
}
