import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPersonal extends StatefulWidget {
  @override
  State<SignupPersonal> createState() => _OnBoradingScreenState();
}

class _OnBoradingScreenState extends State<SignupPersonal> {
  bool isShown = false;
  TextEditingController emailaddress = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();
  final formKey = GlobalKey<FormState>();
  int ieeeColor = 0xff316EBB;


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
                    SizedBox(
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
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Enter your details below & free sign up",
                        style: GoogleFonts.montserrat(fontSize: 16, color: Colors.grey),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
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
                      padding: const EdgeInsets.only(left :8.0),
                      child: Text("Username",style: GoogleFonts.montserrat(
                          color: Colors.grey
                      )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onFieldSubmitted: (String value) {},
                      validator: (value){
                        if(value!.isEmpty){
                          return "Username must not be empty";
                        }
                      },
                      keyboardType: TextInputType.text,
                      controller: username,
                      decoration: InputDecoration(
                          hintText: "Username",
                          prefixIcon: Icon(Icons.person),
                          labelText: "Username",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left :8.0),
                      child: Text("Email Address",style: GoogleFonts.montserrat(
                          color: Colors.grey
                      )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onFieldSubmitted: (String value) {},
                      keyboardType: TextInputType.emailAddress,
                      controller: emailaddress,
                      validator: (value){
                        if(value!.isEmpty){
                          return "Email Address must not be empty";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Create an account here",
                          prefixIcon: Icon(Icons.email),
                          labelText: "Email Address",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left :8.0),
                      child: Text("Phone Number",style: GoogleFonts.montserrat(
                          color: Colors.grey
                      )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onFieldSubmitted: (String value) {},
                      validator: (value){
                        if(value!.isEmpty){
                          return "Phone number must not be empty";
                        }
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "Phone Number",
                          prefixIcon: Icon(Icons.phone_android),
                          labelText: "Phone Number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left :8.0),
                      child: Text("Password",style: GoogleFonts.montserrat(
                          color: Colors.grey
                      )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onFieldSubmitted: (String value) {},
                      validator: (value){
                        if(value!.isEmpty){
                          return "Password must not be empty";
                        }
                      },
                      keyboardType: TextInputType.text,
                      controller: password,
                      obscureText: isShown,
                      decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(Icons.lock),

                          suffixIcon: !isShown? IconButton(onPressed: (){
                            setState(() {
                              isShown = !isShown;
                            });
                          }, icon: Icon(Icons.visibility)):IconButton(onPressed: (){
                            setState(() {
                              isShown = !isShown;

                            });

                          }, icon: Icon(Icons.visibility_off)),
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
                    Text(
                        "Already have an account?"
                        ,style: GoogleFonts.montserrat()
                    ),
                    TextButton(onPressed: (){}, child: Text("Log in!",style: GoogleFonts.montserrat(
                      color: Color(ieeeColor),
                      fontWeight: FontWeight.bold,
                    ),))
                  ],
                )
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          formKey.currentState!.validate();
        },
        child: Icon(Icons.arrow_forward_outlined),
        backgroundColor: Color(ieeeColor),

      ),
    );
  }
}
