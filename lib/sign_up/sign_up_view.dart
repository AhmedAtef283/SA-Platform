import 'package:flutter/material.dart';
import 'package:ieee/sign_up/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignupViewBody(),
    );
  }
}
