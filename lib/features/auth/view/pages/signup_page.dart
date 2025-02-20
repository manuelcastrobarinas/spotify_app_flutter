import 'package:flutter/material.dart';
import 'package:spotify_app/core/theme/app_pallete.dart';
import 'package:spotify_app/features/auth/view/widgets/auth_gradient_button.dart';
import 'package:spotify_app/features/auth/view/widgets/custom_text_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  final TextEditingController nameController      = TextEditingController();
  final TextEditingController emailController     = TextEditingController();
  final TextEditingController passwordController  = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
    formKey.currentState!.validate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body  : Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Sing Up.', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
              SizedBox(height: 30.0),
              CustomTextField(hintText: 'name', controller: nameController,),
              SizedBox(height: 15.0),
              CustomTextField(hintText: 'email', controller: emailController,),
              SizedBox(height: 15.0),
              CustomTextField(hintText: 'password', controller: passwordController, isObscureText: true),
              SizedBox(height: 20.0),
              AuthGradientButton(),
              SizedBox(height: 20.0),
              RichText(
                text: TextSpan(
                  text: 'Already have an account? ',
                  style: Theme.of(context).textTheme.titleMedium,
                  children: [
                    TextSpan(text: 'Sign In', style: TextStyle(color: Pallete.gradient2))
                  ]
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}