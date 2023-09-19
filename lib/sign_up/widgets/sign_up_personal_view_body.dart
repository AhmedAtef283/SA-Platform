import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/widgets/custom_button.dart';

class SignupPersonalViewBody extends StatefulWidget {

   const SignupPersonalViewBody({super.key});

  @override
  State<SignupPersonalViewBody> createState() => _SignupPersonalViewBodyState ();
}

class _SignupPersonalViewBodyState extends State<SignupPersonalViewBody> {

  TextEditingController username = TextEditingController();
  TextEditingController fisrtName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController facultyDep = TextEditingController();
  TextEditingController faculty = TextEditingController();
  TextEditingController gradYear = TextEditingController();
  TextEditingController university = TextEditingController();
  TextEditingController birthDate = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start, // Add this line
          children: [
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
                      child: Text("First Name",
                          style: GoogleFonts.montserrat(color: Colors.grey)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onFieldSubmitted: (String value) {},
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Fisrt Name must not be empty";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.text,
                      controller: fisrtName,
                      decoration: InputDecoration(
                          hintText: "First Name",
                          prefixIcon: const Icon(Icons.person),
                          labelText: "First Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("Last Name",
                          style: GoogleFonts.montserrat(color: Colors.grey)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onFieldSubmitted: (String value) {
                      },
                      keyboardType: TextInputType.text,
                      controller: lastName,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Last Name must not be empty";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "Last Name",
                          prefixIcon: const Icon(Icons.person),
                          labelText: "Last Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("Phone Number",
                          style: GoogleFonts.montserrat(color: Colors.grey)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: phoneNumber,
                      onFieldSubmitted: (String value) {},
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Phone number must not be empty";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "Phone Number",
                          prefixIcon: const Icon(Icons.phone_android),
                          labelText: "Phone Number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("Birth Date",
                          style: GoogleFonts.montserrat(color: Colors.grey)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onFieldSubmitted: (String value) {},
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Birth Date must not be empty";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.text,
                      controller: birthDate,
                      decoration: InputDecoration(
                          hintText: "Ex: 2001-04-01",
                          prefixIcon: const Icon(Icons.cake),
                          labelText: "Birth Date",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("Universty",
                          style: GoogleFonts.montserrat(color: Colors.grey)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onFieldSubmitted: (String value) {},
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Universty must not be empty";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.text,
                      controller: university,
                      decoration: InputDecoration(
                          hintText: "Ex: Zagazig",
                          prefixIcon: const Icon(Icons.school),
                          labelText: "Universty",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("Faculty",
                          style: GoogleFonts.montserrat(color: Colors.grey)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onFieldSubmitted: (String value) {},
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Faculty must not be empty";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.text,
                      controller: faculty,
                      decoration: InputDecoration(
                          hintText: "Ex: Engineering",
                          prefixIcon: const Icon(Icons.school),
                          labelText: "Faculty",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("Faculty Department",
                          style: GoogleFonts.montserrat(color: Colors.grey)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onFieldSubmitted: (String value) {},
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Faculty Department must not be empty";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.text,
                      controller: facultyDep,
                      decoration: InputDecoration(
                          hintText: "Ex: Electrical",
                          prefixIcon: const Icon(Icons.school),
                          labelText: "Faculty Department",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),


                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("Graduation Year",
                          style: GoogleFonts.montserrat(color: Colors.grey)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onTap: (){

                      },
                      onFieldSubmitted: (String value) {},
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Graduation Year must not be empty";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      controller: gradYear,
                      decoration: InputDecoration(
                          hintText: "Ex: 2024",
                          prefixIcon: const Icon(Icons.schedule),
                          labelText: "Graduation Year",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    Center(
                      child: CustomButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                          }
                        },
                        text: 'Sign Up',
                      ),
                    ),

                  ],
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
