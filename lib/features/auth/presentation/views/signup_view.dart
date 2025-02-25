import 'package:flutter/material.dart';
import 'package:war_house/core/widgets/custom_app_bar.dart';
import 'package:war_house/features/auth/presentation/views/widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  static const routeName = 'signupView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'انشاء حساب جديد',
      ),
      body: const SignupViewBody(),
    );
  }
}
