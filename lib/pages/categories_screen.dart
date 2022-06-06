import 'package:bootcamp_aff_app/models/categories_model.dart';
import 'package:bootcamp_aff_app/utility/categories_utility.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CategoryScreen extends StatelessWidget {

  List<Category> categories = CategoryUtility.getCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Olumlama Kategorileri'),
        centerTitle: true,
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Color(0xFFFFF7F7),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: ListView.builder(
                    itemCount: categories.length,
                    itemBuilder: (BuildContext context, int index){
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => categories[index].routePage));
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
                                    'assets/images/categories_images/' + categories[index].imageName + '.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                )
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
                                      bottomRight: Radius.circular(20)
                                    ),
                                    gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                      colors: [
                                        Colors.black.withOpacity(0.5),
                                        Colors.transparent,
                                      ]
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      ClipOval(
                                        child: Container(
                                          color: categories[index].color,
                                          padding: EdgeInsets.all(10),
                                          child: categories[index].icon,
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Text(
                                        categories[index].name,
                                        style: GoogleFonts.righteous(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



