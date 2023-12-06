// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/config/routes/routes.dart';
import 'package:islamic_app/widgets/text400normaltitles.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, homeScreenRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Color(0xffBE8122),
    ));
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Color(0xff7C570D),
                  Color(0xffD1AD72),
                  Color(0xffB88E2E),
                  Color(0xffDDAE45),
                  Color(0xffBE8122),
                ])),
          ),
          Container(
            alignment: Alignment.topCenter,
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.08),
            child: text400normaltitles(
              data: "ابو البراء\n للرقية الشرعية",
              fontsize: MediaQuery.of(context).size.width * 0.12,
              textColor: Colors.white,
            ),
          ),
          Center(
            child: Container(
                width: MediaQuery.of(context).size.width / 1.5,
                alignment: Alignment.center,
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.12),
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage('assets/images/logoContainer.png')),
                ),
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(14)),
                    child: Image.asset('assets/images/logo.png'))),
          ),
        ],
      ),
    );
  }
}
