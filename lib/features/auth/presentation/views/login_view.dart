
import 'package:flutter/material.dart';
import 'package:war_house/core/widgets/custom_app_bar.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = 'loginView';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: buildAppBar(
          context,
          title: 'تسجيل دخول',
        ),
        body: 
      
    );
  }
}
