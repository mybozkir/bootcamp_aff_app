import 'package:flutter/material.dart';

class AffirmationPageWidget extends StatelessWidget {

  final String backgroundImage;
  final String affirmationImage;
  final List<String> affirmationList;

  const AffirmationPageWidget({
    Key? key,
    required this.backgroundImage,
    required this.affirmationList,
    required this.affirmationImage,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        affirmationBackgroundImageMethod(),
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

  Image affirmationBackgroundImageMethod() {
    return Image.asset('assets/images/${backgroundImage}',
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      );
  }

  Center affirmationTextMethod(int index) {
    return Center(
                  child: Padding(
                    padding: EdgeInsets.only(right: 50, left: 50, top: 90),
                    child: Text(
                      affirmationList[index],
                      style: const TextStyle(
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