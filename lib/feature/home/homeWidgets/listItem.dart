// ignore_for_file: file_names, camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:islamic_app/config/theme/MyColors.dart';
import 'package:islamic_app/widgets/text400normal.dart';
import 'package:url_launcher/url_launcher.dart';

class listItem extends StatelessWidget {
  Size size;
  String text;
  String link;
  Function? onclick;
  listItem(
      {super.key,
      required this.size,
      required this.text,
      required this.link,
      this.onclick});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: size.width,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      decoration: BoxDecoration(
          color: darkgreen,
          borderRadius: const BorderRadius.all(Radius.circular(14))),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            if (onclick == null) {
              try {
                _launchUrl(link);
              } catch (e) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(e.toString())));
              }
            } else {
              onclick!();
            }
          },
          borderRadius: const BorderRadius.all(Radius.circular(14)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(children: [
              AspectRatio(
                aspectRatio: 2 / 2,
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(14)),
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.cover,
                    )),
              ),
              Expanded(
                  child: text400normal(data: text, fontsize: size.width * 0.05))
            ]),
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}
