// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:islamic_app/config/routes/routes.dart';
import 'package:url_launcher/url_launcher.dart';

class navigationbar extends StatelessWidget {
  const navigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: ((MediaQuery.of(context).size.height) * 0.07),
      margin: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
                onTap: () {
                  _launchUrl('https://goo.gl/maps/98BLp3Zkqb6kCVcd8');
                },
                child: SvgPicture.asset('assets/images/call.svg')),
          ),
          Expanded(
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed(homeScreenRoute);
                },
                child: SvgPicture.asset('assets/images/home.svg')),
          ),
          Expanded(
            child: GestureDetector(
                onTap: () {
                  _requestreviewDialog();
                },
                child: SvgPicture.asset('assets/images/star.svg')),
          )
        ],
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  _requestreviewDialog() async {
    final InAppReview inAppReview = InAppReview.instance;
    if (await inAppReview.isAvailable()) {
      inAppReview.requestReview();
    }
  }
}
