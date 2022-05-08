import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import 'login_page.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isChecked = false;
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.black.withOpacity(0.5);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.6,
              width: MediaQuery.of(context).size.width ,
              decoration: const BoxDecoration(

              ),
              child: Column(

                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                    ),
                  ),
                  const SizedBox(
                    height: 29,
                  ),
                  Text(
                    "Hesap Oluştur",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                        color:  Colors.black),
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  Container(
                    width: 374,
                    height: 63,
                    decoration: BoxDecoration(
                      color: const Color(0xff7583CA),
                      borderRadius: BorderRadius.circular(38),
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 34.0),
                          child: Icon(
                            Icons.facebook,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        const SizedBox(
                          width: 35,
                        ),
                        Text(
                          "Facebook ile giriş yap",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color:  Colors.white),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 374,
                    height: 63,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.withOpacity(0.5)),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(38),
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 34.0),
                          child: Icon(
                            EvaIcons.google,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 35,
                        ),
                        Text(
                          "Google ile giriş yap",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: const Color(0xff03174C)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "VEYA E-POSTA İLE GİRİŞ YAPIN",
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  letterSpacing: 2,
                  color:  Colors.black),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: 374,
              height: 63,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(242, 243, 247, 1)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 5),
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.done_rounded, color: Colors.green),
                      hintText: "Kullanıcı adı",
                      border: InputBorder.none,
                      hintStyle: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          letterSpacing: 2)),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 374,
              height: 63,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(242, 243, 247, 1)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 5),
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.done_rounded, color: Colors.green),
                      hintText: "E-posta adresi",
                      border: InputBorder.none,
                      hintStyle: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          letterSpacing: 2)),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 374,
              height: 63,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color:const  Color.fromRGBO(242, 243, 247, 1)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 5),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      suffixIcon: const Icon(EvaIcons.eyeOff2, color: Colors.black),
                      hintText: "Şifre",
                      border: InputBorder.none,
                      hintStyle: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          letterSpacing: 2)),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Gizlilik Politikasını okudum ve kabul ediyorum",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color:  Colors.black),
                  ),
                  Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
              width: 374,
              height: 63,
              decoration: BoxDecoration(
                color: const Color(0xff7583CA),
                borderRadius: BorderRadius.circular(38),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LogIn()),
                  );
                },
                child: Text(
                  "Giriş yap",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color:  Colors.white,
                  ),
                ),

              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
