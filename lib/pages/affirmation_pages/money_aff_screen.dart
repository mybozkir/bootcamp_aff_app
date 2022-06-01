import 'package:bootcamp_aff_app/utility/affirmation_utility.dart';
import 'package:bootcamp_aff_app/widgets/affirmation_page_widget.dart';
import 'package:bootcamp_aff_app/widgets/affirmation_page_widget_nb.dart';
import 'package:flutter/material.dart';

class MoneyAffirmationScreen extends StatefulWidget {
  const MoneyAffirmationScreen({Key? key}) : super(key: key);

  @override
  State<MoneyAffirmationScreen> createState() => _MoneyAffirmationScreenState();
}

class _MoneyAffirmationScreenState extends State<MoneyAffirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(MoneyUtility.moneyPageName),
        centerTitle: true,
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MoneyUtility.moneyColor,
      body: AffirmationPageWidgetNB(
        affirmationImage: MoneyUtility.moneyImageName,
        affirmationList: MoneyUtility.moneyAffirmationList,
      ),
    );
  }
}

class MoneyUtility{
  static final String moneyPageName = AffirmationsUtility.money_affirmations.name;
  static final List<String> moneyAffirmationList = AffirmationsUtility.money_affirmations.list;
  static final String moneyImageName = AffirmationsUtility.money_affirmations.imageName;
  static final Color moneyColor = AffirmationsUtility.money_affirmations.color;
}