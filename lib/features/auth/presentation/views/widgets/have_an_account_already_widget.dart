import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:war_house/core/utils/app_text_styles.dart';

class HaveAnAccountAlreadyWidget extends StatelessWidget {
  const HaveAnAccountAlreadyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
              text: 'تمتلك حساب بالفعل؟',
              style: TextStyles.semiBold16.copyWith(
                color: const Color(0xFF949D9E),
              )),
          TextSpan(
              text: ' ',
              style: TextStyles.semiBold16.copyWith(
                color: const Color(0xFF949D9E),
              )),
          TextSpan(
              text: 'تسجيل دخول',
              style: TextStyles.semiBold16.copyWith(
                color: const Color(0xFF1B5E37),
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pop(context);
                }),
        ],
      ),
      textAlign: TextAlign.right,
    );
  }
}
