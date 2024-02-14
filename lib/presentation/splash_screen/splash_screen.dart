import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tulips/core/app_export.dart';

import '../onboard_screen/onboard_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>OnboardScreen()

            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgLogoPrimary,
                height: 97    ,
                width: 116    ,
              ),
              SizedBox(height: 63    ),
              Opacity(
                opacity: 0.4,
                child: CustomImageView(
                  imagePath: ImageConstant.imgImage1,
                  height: 288    ,
                  width: 360    ,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
