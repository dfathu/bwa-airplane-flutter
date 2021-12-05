import 'package:bwa_airplane/shared/theme.dart';
import 'package:bwa_airplane/ui/widgets/custom_button.dart';
import 'package:bwa_airplane/ui/widgets/custom_textform_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget inputSection() {
      Widget fullnameInput() {
        return CustomTextFormField(
            title: 'Full Name',
            hint: 'Your full name',
            margin: EdgeInsets.only(bottom: 20));
      }

      Widget emailInput() {
        return CustomTextFormField(
            title: 'Email Address',
            hint: 'Your email address',
            margin: EdgeInsets.only(bottom: 20));
      }

      Widget passwordInput() {
        return CustomTextFormField(
            title: 'Password',
            hint: 'Create a secure password',
            isSecure: true,
            margin: EdgeInsets.only(bottom: 20));
      }

      Widget conPassInput() {
        return CustomTextFormField(
            title: 'Confirmation Password',
            hint: 'Confirmation your password',
            isSecure: true,
            margin: EdgeInsets.only(bottom: 20));
      }

      Widget hobbyInput() {
        return CustomTextFormField(
            title: 'Hobby',
            hint: 'Your hobby',
            margin: EdgeInsets.only(bottom: 30));
      }

      Widget submitButton() {
        return CustomButton(
            title: 'Create Account',
            onPressed: () {
              Navigator.pushNamed(context, '/bonus');
            });
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(
          children: [
            fullnameInput(),
            emailInput(),
            passwordInput(),
            conPassInput(),
            hobbyInput(),
            submitButton()
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 50, bottom: 73),
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [title(), inputSection(), tacButton()],
        ),
      ),
    );
  }
}
