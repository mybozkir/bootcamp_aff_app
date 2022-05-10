import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:oua_bootcamp_app/home_page.dart';


class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(

                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey)),
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    Text(
                      "Tekrar Hoş geldin",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                        color:  Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 33,
                    ),
                    Container(
                      width: 374,
                      height: 63,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(38),
                        color:  const Color(0xff7583CA),
                      ),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 34.0),
                            child: Icon(
                              Icons.facebook,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          const SizedBox(
                            width: 45,
                          ),
                          Text(
                            "Facebook ile devam et",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color:  Colors.white,)
                          ),
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
                          borderRadius: BorderRadius.circular(38),
                          color: Colors.white,
                          border:
                          Border.all(color: Colors.grey.withOpacity(0.5))),
                      child: Row(
                        children: [
                          const Padding(
                              padding: EdgeInsets.only(left: 34.0),
                              child: Icon(
                                EvaIcons.googleOutline,
                                size: 40,
                              )),
                          const SizedBox(
                            width: 45,
                          ),
                          Text(
                            "Google ile devam et",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Veya e-posta ile giriş yapın",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    letterSpacing: 2,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: 374,
                height: 63,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(242, 243, 247, 1),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 8),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "E-posta adresi",
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.roboto(
                            color: const Color(0xffA1A4B2),
                            letterSpacing: 2,
                            fontWeight: FontWeight.w400,
                            fontSize: 16)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 374,
                height: 63,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(242, 243, 247, 1),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 8),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Şifre",
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.roboto(
                            color: const Color(0xffA1A4B2),
                            letterSpacing: 2,
                            fontWeight: FontWeight.w400,
                            fontSize: 16)),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 374,
                height: 63,
                decoration: BoxDecoration(
                  color:  const Color(0xff8E97FD),
                  borderRadius: BorderRadius.circular(38),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      );
                    },
                    child: Text(
                      "Giriş Yap",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
