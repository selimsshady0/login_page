import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:login_page/features/auth/presentation/pages/signup_page.dart';
import 'package:login_page/features/auth/presentation/widgets/auth_field.dart';
import 'package:login_page/features/auth/presentation/widgets/auth_gradient_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static route() => MaterialPageRoute(
        builder: (context) => const LoginPage(),
      );

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg2.jpg"),
            opacity: 0.9,
            fit: BoxFit.fill,
          ),
        ),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeInUp(
                duration: const Duration(milliseconds: 500),
                child: const Text(
                  "Log In.",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontFamily: "OpenSans",
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              FadeInUp(
                duration: const Duration(milliseconds: 800),
                child: AuthField(
                  hintText: "Email",
                  controller: emailController,
                ),
              ),
              const SizedBox(height: 15),
              FadeInUp(
                duration: const Duration(milliseconds: 900),
                child: AuthField(
                  hintText: "Password",
                  controller: passwordController,
                  isObscureText: true,
                ),
              ),
              const SizedBox(height: 30),
              FadeInUp(
                duration: const Duration(milliseconds: 1000),
                child: AuthGradientButton(
                  text: "Log In",
                  onPressed: () => null,
                ),
              ),
              const SizedBox(height: 20),
              FadeInUp(
                duration: const Duration(milliseconds: 1100),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, SignUpPage.route());
                  },
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: Theme.of(context).textTheme.titleMedium,
                      children: [
                        TextSpan(
                          text: "Sign Up",
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
