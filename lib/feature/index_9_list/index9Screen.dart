// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:islamic_app/core/Constants/data.dart';
import 'package:islamic_app/feature/home/homeWidgets/listItem.dart';
import 'package:islamic_app/widgets/navigationbar.dart';
import 'package:islamic_app/widgets/text400normaltitles.dart';

class index9Screen extends StatefulWidget {
  const index9Screen({super.key});

  @override
  State<index9Screen> createState() => _index9ScreenState();
}

class _index9ScreenState extends State<index9Screen> {
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            color: const Color(0xffB88E2E),
          ),
          SafeArea(
            child: Container(
              height: size.height * 0.2,
              width: size.width,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/mosq.png'))),
            ),
          ),
          Container(
            height: ((size.height) - (size.height * 0.1)),
            margin: EdgeInsets.only(top: size.height * 0.15),
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
                    ]),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18))),
            child: ListView.builder(
              itemCount: index9.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return listItem(
                  size: size,
                  text: index9[index].text,
                  link: index9[index].link,
                );
              },
            ),
          ),
          SafeArea(
            child: Container(
              width: size.width,
              margin: EdgeInsets.only(top: size.height * 0.01),
              child: text400normaltitles(
                data: 'مطويات الرقية الشرعية',
                fontsize: size.width * 0.08,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SafeArea(
              child: Container(
                width: size.width,
                margin: EdgeInsets.only(top: size.height * 0.01),
                child: const navigationbar(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
