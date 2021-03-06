import 'package:bootcamp_aff_app/pages/main_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bootcamp_aff_app/utility/onboarding_utility.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

  List onboardingContents = OnboardingUtility.getOnboardingModels();
  int currentIndex = 0;
  late PageController _controller;

  Color? backGroundColor(){
    if(currentIndex == 0){
      return Color(0xFFF5F5FF);
    }else if(currentIndex == 1){
      return Color(0xFFDCDCFF);
    }else if(currentIndex == 2){
      return Color(0xFFC2C2FF);
    }
  }

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
      extendBodyBehindAppBar: true,
      backgroundColor: backGroundColor(),
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
                  padding: const EdgeInsets.only(top: 120),
                  child: Column(
                    children: [
                      SvgPicture.asset(onboardingContents[index].image,height: 300,),
                      Text(
                        onboardingContents[index].title,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.righteous(
                          fontSize: 35,
                        )
                      ),
                      SizedBox(height: 20,),
                      Text(
                        onboardingContents[index].description,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.righteous(
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
            color: Colors.transparent,
            child: TextButton(
              child: Text(
                  currentIndex == onboardingContents.length - 1 ? 'Ba??la !' :  'Sonraki',
                style: GoogleFonts.righteous(),
              ),
              onPressed: () async {
                if(currentIndex == onboardingContents.length - 1){
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setBool('onBoarding', false);
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => MainPageWidget()),
                  );
                }
                _controller.nextPage(duration: Duration(milliseconds: 1000), curve: Curves.bounceOut);
              },
              style: TextButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Color(0xFFF5FFF5),
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
