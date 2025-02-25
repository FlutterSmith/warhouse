import 'package:flutter/material.dart';
import 'package:war_house/core/utils/app_colors.dart';
import 'package:war_house/core/widgets/custom_button.dart';
import 'package:war_house/core/widgets/custom_text_form_field.dart';
import 'package:war_house/features/auth/presentation/views/widgets/have_an_account_already_widget.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email;
  late String password;
  late String name;
  final bool _termsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  name = value!.trim();
                },
                hintText: 'الاسم كامل',
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!.trim();
                },
                hintText: 'البريد الإلكتروني',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                onSaved: (value) {
                  password = value!.trim();
                },
                hintText: 'كلمة المرور',
                isPasswordField: true,
                keyboardType: TextInputType.visiblePassword,
              ),
              const SizedBox(height: 20),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    // Perform signup action
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                  
                },
                text: 'إنشاء حساب جديد',  
                backgroundColor:  AppColors.primaryColor,
                textColor: Colors.white,
                

              ),
              const SizedBox(
                height: 25,
              ),
              const HaveAnAccountAlreadyWidget()
            ],
          ),
        ),
      ),
    );
  }
}
