import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ieee/constants.dart';
import 'package:ieee/login/login_view.dart';
import 'package:ieee/sign_up/widgets/sign_up_personal_view_body.dart';

import '../SignupPersonalView.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _OnBoradingScreenState();
}

class _OnBoradingScreenState extends State<SignupViewBody> {

  bool isShown = true;
  TextEditingController emailaddress = TextEditingController();
  TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start, // Add this line
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
                        "Sign Up",
                        style: GoogleFonts.montserrat(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Enter your details below & free sign up",
                        style: GoogleFonts.montserrat(
                            fontSize: 16, color: Colors.grey),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("Email Address",
                          style: GoogleFonts.montserrat(color: Colors.grey)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onFieldSubmitted: (String value) {
                      },
                      keyboardType: TextInputType.emailAddress,
                      controller: emailaddress,
                      validator: (value) {
                        final bool emailValid = RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value!);
                        if (value.isEmpty) {
                          return "Email Address must not be empty";
                        } else if (!emailValid) {
                          return "Enter a valid email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "Create an account here",
                          prefixIcon: const Icon(Icons.email),
                          labelText: "Email Address",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("Password",
                          style: GoogleFonts.montserrat(color: Colors.grey)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onFieldSubmitted: (String value) {
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password must not be empty";
                        }
                        else if(password.text.length <= 6 ){
                            return "Short Password";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.text,
                      controller: password,
                      obscureText: isShown,
                      decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: !isShown
                              ? IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isShown = !isShown;
                                    });
                                  },
                                  icon: const Icon(Icons.visibility))
                              : IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isShown = !isShown;
                                    });
                                  },
                                  icon: const Icon(Icons.visibility_off)),
                          labelText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?",
                    style: GoogleFonts.montserrat()),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginView();
                    }));
                  },
                  child: Text(
                    "Log in!",
                    style: GoogleFonts.montserrat(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SignUpPersonalView(

              );
            }));
          }
        },
        backgroundColor: kPrimaryColor,
        child: const Icon(Icons.arrow_forward_outlined),
      ),
    );
  }
}
