import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_lecture/main.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'Welcome to my app',
            body:
                'This is the first page. We are making on-boarding screens.It is very iteresting!',
            image: Image.asset('image/page1.png'),
            decoration: PageDecoration(),
          ),
          PageViewModel(
            title: 'Welcome to my app',
            body:
                'This is the second page. We are making on-boarding screens.It is very iteresting!',
            image: Image.asset('image/page2.png'),
            decoration: PageDecoration(),
          ),
          PageViewModel(
            title: 'Welcome to my app',
            body:
                'This is the third page. We are making on-boarding screens.It is very iteresting!',
            image: Image.asset('image/page3.png'),
            decoration: PageDecoration(),
          ),
        ],
        done: const Text('done'), //온보딩 스크린의 마막 페지지 보았을 때 무엇을 할지 지정해주는 버튼
        onDone: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const MyPage()),
          );
        },
        next: const Icon(Icons.arrow_forward),
        showSkipButton: true,
        skip: const Text('skip'),
        dotsDecorator: DotsDecorator(
            color: Colors.cyan,
            size: const Size(10, 10),
            activeSize: const Size(22, 10),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            activeColor: Colors.red),
        curve: Curves.bounceOut);
  }

  PageDecoration getPageDecoration() {
    return const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        bodyTextStyle: TextStyle(fontSize: 18, color: Colors.blue),
        imagePadding: EdgeInsets.only(top: 40),
        pageColor: Colors.orange);
  }
}
