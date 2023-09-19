import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ieee/core/widgets/custom_button.dart';
import 'package:ieee/core/widgets/custom_text_button.dart';
import 'package:ieee/core/widgets/custom_text_form_field.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  bool isShown = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 180,
                color: Colors.grey[200],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Log In",
                      style: GoogleFonts.montserrat(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Username',
                    style: GoogleFonts.montserrat(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFormField(
                    hintText: "Username",
                    labelText: "Username",
                    prefixIcon: Icons.person,
                    keyboardType: TextInputType.text,
                    controller: nameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username must not be empty";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Password",
                    style: GoogleFonts.montserrat(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextFormField(
                    hintText: "Password",
                    labelText: "Password",
                    isShown: isShown,
                    prefixIcon: Icons.lock,
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password must not be empty";
                      }
                      return null;
                    },
                    suffixIcon:
                        isShown ? Icons.visibility_off : Icons.visibility,
                    onSuffixIconPressed: () {
                      setState(() {
                        isShown = !isShown;
                      });
                    },
                  ),
                  const SizedBox(height: 26),
                  CustomButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {}
                    },
                    text: 'Log In',
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don’t have an account?',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: const Color(0xFF858597),
                  fontWeight: FontWeight.normal,
                ),
              ),
              CustomTextButton(
                text: 'Sign up',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
