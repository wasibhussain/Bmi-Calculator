import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

class SignUp extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();

  SignUp({Key? key}) : super(key: key);

  void register() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseFirestore db = FirebaseFirestore.instance;

    final String firstname = nameController.text;
    final String lastname = lastNameController.text;
    final String email = emailController.text;
    final String password = passwordController.text;
    final String mobileNumber = mobileController.text;
    try {
      final UserCredential user = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      db.collection("user").doc(user.user!.uid).set({
        "first name": firstname,
        "last name": lastname,
        "mobile number": mobileNumber,
        "email": email,
        "password": password,
      });
    } catch (e) {
      print("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    var _passwordVisible = false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 65),
          child: Text(
            "Try Virtually",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black, // add custom icons also
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Padding(padding: EdgeInsets.only(top: 130)),
        Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "First Name", border: OutlineInputBorder()),
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter first name';
                    }

                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Last Name", border: OutlineInputBorder()),
                    controller: lastNameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter last name';
                      }

                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: TextField(
                    decoration: new InputDecoration(
                        labelText: "Enter your Mobile number",
                        border: OutlineInputBorder()),
                    keyboardType: TextInputType.number,
                    controller: mobileController,

                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    // Only numbers can be entered
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Email", border: OutlineInputBorder()),
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Email';
                      } else if (value.contains('@')) {
                        return 'Please Enter Valid Email';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Password", border: OutlineInputBorder()),
                    controller: passwordController,
                    obscureText: !_passwordVisible,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Password';
                      }

                      return null;
                    },
                  ),
                ),
                ElevatedButton(onPressed: register, child: Text("Sign Up")),
              ],
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(
          top: 5,
        )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Already have an account?"),
            InkWell(
                child: new Text(
                  'Sign In',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => SignInPage()));
                }),
          ],
        ),
      ])),
    );
  }
}
