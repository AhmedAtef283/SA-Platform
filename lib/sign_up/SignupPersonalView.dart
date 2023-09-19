import 'package:flutter/material.dart';
import 'package:ieee/sign_up/widgets/sign_up_personal_view_body.dart';

class SignUpPersonalView extends StatelessWidget {
  String? email;
  String? pass;
   SignUpPersonalView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SignupPersonalViewBody(),
    );
  }
}
