// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:talkbox/app/shared/assets.dart';
import 'package:talkbox/app/shared/colors.dart';
import 'package:talkbox/app/widget/busy_button.dart';
import 'package:talkbox/core/navigators/navigators.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 25,
          right: 25,
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 181,
              ),
              const Image(
                image: AssetImage(AppAssets.logo),
              ),
              const SizedBox(
                height: 90,
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  color: AppColors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0X40000000),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: const [
                      Image(image: AssetImage(AppAssets.googlelogo)),
                      SizedBox(width: 42),
                      Text(
                        'Sign in with Google',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  color: AppColors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0X40000000),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: const [
                      Image(image: AssetImage(AppAssets.fbLogo)),
                      SizedBox(width: 42),
                      Text(
                        'Sign in with facebook',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 46),
              Row(
                children: const [
                  Expanded(
                    child: Divider(
                      height: 1,
                      thickness: 1,
                      color: AppColors.black,
                    ),
                  ),
                  SizedBox(width: 19),
                  Text(
                    "OR",
                    style: TextStyle(color: AppColors.black),
                  ),
                  SizedBox(width: 19),
                  Expanded(
                    child: Divider(
                      height: 1,
                      thickness: 1,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 90),
              BusyButton(
                fontSize: 16,
                text: 'Continue with Phone Number',
                onPress: () {
                  Navigator.pushNamed(
                      context, RouteName.continuewithPhoneNumber);
                },
              ),
              const SizedBox(height: 32),
              const Text(
                'don’t have an account?',
                style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Sign up here',
                style: TextStyle(
                  color: Color(0XFF3E7FE0),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
