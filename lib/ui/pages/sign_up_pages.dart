import 'package:bwa_airplane/cubit/auth_cubit.dart';
import 'package:bwa_airplane/shared/theme.dart';
import 'package:bwa_airplane/ui/widgets/custom_button.dart';
import 'package:bwa_airplane/ui/widgets/custom_textform_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  TextEditingController conpassController = TextEditingController(text: '');
  TextEditingController hobbyController = TextEditingController(text: '');

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
            controller: nameController,
            margin: EdgeInsets.only(bottom: 20));
      }

      Widget emailInput() {
        return CustomTextFormField(
            title: 'Email Address',
            hint: 'Your email address',
            controller: emailController,
            margin: EdgeInsets.only(bottom: 20));
      }

      Widget passwordInput() {
        return CustomTextFormField(
            title: 'Password',
            hint: 'Create a secure password',
            isSecure: true,
            controller: passwordController,
            margin: EdgeInsets.only(bottom: 20));
      }

      Widget conPassInput() {
        return CustomTextFormField(
            title: 'Confirmation Password',
            hint: 'Confirmation your password',
            controller: conpassController,
            isSecure: true,
            margin: EdgeInsets.only(bottom: 20));
      }

      Widget hobbyInput() {
        return CustomTextFormField(
            title: 'Hobby',
            hint: 'Your hobby',
            controller: hobbyController,
            margin: EdgeInsets.only(bottom: 30));
      }

      Widget submitButton() {
        return BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthSuccess) {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/bonus', (route) => false);
            } else if (state is AuthFailed) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: kRedColor, content: Text(state.error)));
            }
          },
          builder: (context, state) {
            if (state is AuthLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            return CustomButton(
                title: 'Create Account',
                onPressed: () {
                  context.read<AuthCubit>().signUp(
                      name: nameController.text,
                      email: emailController.text,
                      password: passwordController.text,
                      hobby: hobbyController.text);
                });
          },
        );
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
