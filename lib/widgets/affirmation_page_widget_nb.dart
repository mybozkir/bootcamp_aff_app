import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AffirmationPageWidgetNB extends StatelessWidget {

  final String affirmationImage;
  final List<String> affirmationList;

  const AffirmationPageWidgetNB({
    Key? key,
    required this.affirmationList,
    required this.affirmationImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
            itemCount: affirmationList.length,
            itemBuilder: (BuildContext context, int index){
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: affirmationImageMethod(context),
                  ),
                  affirmationTextMethod(index),
                ],
              );
            }
        ),
      ],
    );
  }

  Center affirmationImageMethod(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 10),
        child: Container(
          height: MediaQuery.of(context).size.height / 1.30,
          width: MediaQuery.of(context).size.width / 1.20,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.white70,
                  offset: Offset.zero,
                  blurRadius: 5,
                ),
              ],
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/${affirmationImage}',
                ),
                fit: BoxFit.cover,
              )
          ),
        ),
      ),
    );
  }



  Center affirmationTextMethod(int index) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(right: 50, left: 50, top: 90),
        child: Text(
          affirmationList[index],
          style: GoogleFonts.contrailOne(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w700,
              fontSize: 30
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}