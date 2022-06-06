import 'package:bootcamp_aff_app/models/seven_chakras_category_model.dart';
import 'package:bootcamp_aff_app/utility/seven_chakras_categories_utility.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SevenChakrasCategoriesScreen extends StatelessWidget {

  List<SevenChakrasCategory> sevenChakraCategories = SevenChakrasCategoryutility.getSevenCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('7 Çakra'),
        centerTitle: true,
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Color(0xFFFFF5F5),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          child: Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 7,
                itemBuilder: (context, index){
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => sevenChakraCategories[index].routePage));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 120,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/seven_chakras_images/logo/' + sevenChakraCategories[index].imageName + '.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Colors.black.withOpacity(0.5),
                                    Colors.transparent,
                                  ]
                                )
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    sevenChakraCategories[index].name,
                                    style: GoogleFonts.righteous(
                                      color: Colors.white70,
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }
            ),
          ),
        ),
      ),
    );
  }
}
