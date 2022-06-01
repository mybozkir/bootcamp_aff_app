import 'dart:math';
import 'dart:ui';
import 'package:bootcamp_aff_app/data/affirmation_data.dart';
import 'package:bootcamp_aff_app/data/image_data.dart';
import 'package:bootcamp_aff_app/pages/categories_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MainPageWidget extends StatefulWidget {
  const MainPageWidget({Key? key}) : super(key: key);

  @override
  State<MainPageWidget> createState() => _MainPageWidgetState();
}

class _MainPageWidgetState extends State<MainPageWidget> {

  List<String> randomImageList = ImageData.randomNatureImageList;
  late String currentImage;
  late String randomAff;

  String _getRandomImage(){
    final randomIndex = Random().nextInt(randomImageList.length-1);
    return randomImageList[randomIndex];
  }

  @override
  void initState() {
    final newImage = _getRandomImage();
    currentImage = newImage;
    String randomAffirmation = AffirmationData().getRandomAffirmation();
    randomAff = randomAffirmation;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/main_page_images/anaekran1.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:EdgeInsets.only(top: MediaQuery.of(context).size.height / 20, bottom: MediaQuery.of(context).size.height / 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 30,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            currentImage,
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.height / 1.45,
                            width: MediaQuery.of(context).size.width / 1.10,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                              child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width / 1.1,
                                height: MediaQuery.of(context).size.height / 1.45,
                                child: Text(
                                  randomAff,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.contrailOne(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                color: Colors.lightBlueAccent.withOpacity(0.1),
                              ),
                            ),
                          )
                        ],
                      ) ,
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23),
                    ),
                    color: Color(0xFFDCE5DC),
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.1,
                          height: MediaQuery.of(context).size.height / 12,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 100, left: 20),
                                child: Text(
                                  'Categories',
                                  style: GoogleFonts.contrailOne(
                                    color: Colors.black,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              IconButton(
                                  color: Colors.black,
                                  iconSize: 26,
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryScreen()));
                                  },
                                  icon: Icon(Icons.arrow_forward_ios)),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23),
                    ),
                    color: Color(0xFFDCE5DC),
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.1,
                          height: MediaQuery.of(context).size.height / 12,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 100, left: 20),
                                child: Text(
                                  'Music List',
                                  style: GoogleFonts.contrailOne(
                                    color: Colors.black,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              IconButton(
                                  color: Colors.black,
                                  iconSize: 26,
                                  onPressed: (){},
                                  icon: Icon(Icons.arrow_forward_ios)),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
