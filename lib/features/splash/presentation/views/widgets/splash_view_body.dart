import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:war_house/core/utils/app_colors.dart';
import 'package:war_house/core/utils/app_images.dart';
import 'package:war_house/core/widgets/custom_button.dart';
import 'package:war_house/features/auth/presentation/views/login_view.dart';
import 'package:war_house/features/auth/presentation/views/signup_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor, // Change to your desired background color
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 90,
          ),
          Center(
            child: Container(
              width: 361,
              height: 369,
              decoration: const ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image.png'),
                  fit: BoxFit.fill,
                ),
                shape: OvalBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'WMS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 64,
              fontFamily: 'InknutAntiqua',
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 120,
          ),
          CustomButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, LoginView.routeName);
            },
            text: 'Get Started',
            backgroundColor: Colors.white,
            textColor: AppColors.primaryColor,
          )
        ],
      ),
    );
  }
}
