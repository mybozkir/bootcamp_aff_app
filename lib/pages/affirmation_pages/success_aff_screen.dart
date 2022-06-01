
import 'package:bootcamp_aff_app/utility/affirmation_utility.dart';
import 'package:bootcamp_aff_app/widgets/affirmation_page_widget.dart';
import 'package:bootcamp_aff_app/widgets/affirmation_page_widget_nb.dart';
import 'package:flutter/material.dart';


class SuccessAffirmationScreen extends StatefulWidget {
  const SuccessAffirmationScreen({Key? key}) : super(key: key);

  @override
  State<SuccessAffirmationScreen> createState() => _SuccessAffirmationScreenState();
}

class _SuccessAffirmationScreenState extends State<SuccessAffirmationScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(SuccessUtility.successPageName),
        centerTitle: true,
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: SuccessUtility.successColor,
      body: AffirmationPageWidgetNB(
        affirmationImage: SuccessUtility.successImageName,
        affirmationList: SuccessUtility.successAffirmationList,
      ),
    );
  }
}



class SuccessUtility{
  static final String successPageName = AffirmationsUtility.success_affirmations.name;
  static final List<String> successAffirmationList = AffirmationsUtility.success_affirmations.list;
  static final String successImageName = AffirmationsUtility.success_affirmations.imageName;
  static final Color successColor = AffirmationsUtility.success_affirmations.color;
}