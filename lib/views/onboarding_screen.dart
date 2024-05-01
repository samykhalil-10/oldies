import 'package:flutter/material.dart';
import 'package:oldies/features/helper.dart';
import 'package:oldies/utils/styles.dart';
import 'package:oldies/views/login_screen.dart';
import 'package:oldies/widgets/build_onboarding_item.dart';
import 'package:oldies/widgets/custom_button.dart';
import 'package:oldies/widgets/nav.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var boardController = PageController();

  List<BoardingModel> boarding = [
    BoardingModel(
        title: '',
        image: 'assets/images/oldies1.jpeg',
        body: 'WELCOME TO\nOLDIES',
        text: ''),
    BoardingModel(
        title: '',
        image: 'assets/images/oldies4.jpeg',
        body: 'Now You Can Order Easily With Oldies App',
        text: ''),
    BoardingModel(
        title: '',
        body: 'Are You Hungry?',
        image: 'assets/images/oldies3.png',
        text: ''),
  ];

  bool isLast = false;

  void submit() {
    CacheHelper.saveData(key: 'onBoarding', value: true).then((value) {
      if (value) {}
    });
    navigateAndFinish(
      context,
      Login_Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          TextButton(onPressed: ()
          {
            navigateAndFinish(context, Login_Screen());
          }, child: Text('Skip',
            style: Styles.style14,))
        ],
      ),

      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(

          child: Column(
            children: [

              Expanded(
                child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller: boardController,
                  onPageChanged: (int index) {
                    if (index == boarding.length - 1) {
                      setState(() {
                        isLast = true;
                      });
                    } else {
                      setState(() {
                        isLast = false;
                      });
                    }
                  },
                  itemBuilder: (context, index) =>
                      buildBoardingItem(boarding[index]),
                  itemCount: boarding.length,
                ),
              ),
              // const SizedBox(height: 20.0),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmoothPageIndicator(
                      controller: boardController,
                      effect: const ExpandingDotsEffect(
                        dotColor: Colors.white,
                        activeDotColor: Colors.deepOrange,
                        dotHeight: 7.0,
                        expansionFactor: 4,
                        dotWidth: 10,
                        spacing: 5.0,
                      ),
                      count: boarding.length,
                    ),

                    // const Spacer(),
                    // FloatingActionButton(
                    //   onPressed: () {
                    //     if (isLast) {
                    //       submit();
                    //     }
                    //
                    //     boardController.nextPage(
                    //         duration: const Duration(
                    //           milliseconds: 750,
                    //         ),
                    //         curve: Curves.fastLinearToSlowEaseIn);
                    //   },
                    //   child: const Icon(Icons.arrow_forward),
                    // ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                text: 'Next',
                onTap: () {
                  if (isLast) {
                    submit();
                  }
                  boardController.nextPage(
                      duration: Duration(milliseconds: 750),
                      curve: Curves.fastLinearToSlowEaseIn);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}