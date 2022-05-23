import 'package:bootcamp_aff_app/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bootcamp_aff_app/utility/onboarding_utility.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

  List onboardingContents = OnboardingUtility.getOnboardingModels();
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState(){
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
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: onboardingContents.length,
              onPageChanged: (int index){
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      SvgPicture.asset(onboardingContents[index].image,height: 300,),
                      Text(
                        onboardingContents[index].title,
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        onboardingContents[index].description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(onboardingContents.length, (index) => buildDot(context, index)),
            )
          ),
          Container(
            height: 50,
            margin: EdgeInsets.all(40),
            width: double.infinity,
            color: Colors.white70,
            child: TextButton(
              child: Text(currentIndex == onboardingContents.length - 1 ? 'Başla !' :  'Sonraki'),
              onPressed: () {
                if(currentIndex == onboardingContents.length - 1){
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LogIn()),
                  );
                }
                _controller.nextPage(duration: Duration(milliseconds: 1000), curve: Curves.bounceOut);
              },
              style: TextButton.styleFrom(
                primary: Colors.white70,
                backgroundColor: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )
              )
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(BuildContext context, int index) {
    return Container(
              height: 10,
              width: currentIndex == index ? 25: 10,
              margin: EdgeInsets.only(right: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).primaryColor,
              ),
            );
  }
}

