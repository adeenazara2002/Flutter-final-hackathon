
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finalhackathonapplication/Screens/Services/firebaseFunctions.dart';
import 'package:finalhackathonapplication/Screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:finalhackathonapplication/Screens/colors.dart';



class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _passwordVisible = false;

  // Firebase instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _createAccount() async {
    try {
      // Create user with email and password
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      // Save user info to Firestore

      await FirestoreServices.saveUser(
        _nameController.text,
        _emailController.text,
        userCredential.user!.uid,
      );

      // Navigate to SignIn screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignIn()),
      );
    } catch (e) {
      print(e);
      // You might want to show an error message here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color.fromRGBO(255, 255, 255, 1),
          child: Stack(
            children: [
              // === Pink Background Image ===
              Image.asset('assets/images/pinkPart.png'),

              // === Foodie Image ===
              Positioned(
                top: 100,
                left: 0,
                right: 0,
                child: Center(
                  child: Image.asset('assets/images/foodieWhite.png'),
                ),
              ),

              // === Text Below Image ===
              Positioned(
                top: 200,
                left: 70,
                right: 0,
                child: Text(
                  'Deliver Favourite Food',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    color: AppColors.screenColor,
                  ),
                ),
              ),

              // === Form Container ===
              Positioned(
                top: 280,
                left: 10,
                child: Container(
                  margin: const EdgeInsets.only(left: 20),
                  width: 300,
                  height: 360,
                  decoration: BoxDecoration(
                    color: AppColors.screenColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: AppColors.screenColor,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Signup',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: AppColors.headingColor),
                      ),

                      // textfield1

                      Container(
                        height: 60,
                        width: 260,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          color: AppColors.textFieldColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: AppColors.textFieldColor,
                          ),
                        ),
                        child: TextField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: AppColors.headingColor,
                              size: 20,
                            ),
                            hintText: 'Name',
                            hintStyle: TextStyle(
                              color: AppColors.headingColor,
                              fontFamily: 'Poppins-Regular',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 20.0,
                              horizontal: 20.0,
                            ),
                          ),
                          style: TextStyle(
                            color: AppColors.headingColor,
                          ),
                        ),
                      ),

                      // textfield2

                      Container(
                        height: 60,
                        width: 260,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          color: AppColors.textFieldColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: AppColors.textFieldColor,
                          ),
                        ),
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: AppColors.headingColor,
                              size: 20,
                            ),
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              color: AppColors.headingColor,
                              fontFamily: 'Poppins-Regular',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 20.0,
                              horizontal: 20.0,
                            ),
                          ),
                          style: TextStyle(
                            color: AppColors.headingColor,
                          ),
                        ),
                      ),

                      // textfield3

                      Container(
                        height: 60,
                        width: 260,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          color: AppColors.textFieldColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: AppColors.textFieldColor,
                          ),
                        ),
                        child: TextField(
                          controller: _passwordController,
                          obscureText: !_passwordVisible, // Toggle visibility
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: AppColors.headingColor,
                              size: 20,
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: AppColors.headingColor,
                              fontFamily: 'Poppins-Regular',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: AppColors.headingColor,
                                size: 20,
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible =
                                      !_passwordVisible; // Toggle the state
                                });
                              },
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 20.0,
                              horizontal: 20.0,
                            ),
                          ),
                          style: TextStyle(
                            color: AppColors.headingColor,
                          ),
                        ),
                      ),

                      // === LOGIN BUTTON ===
                      SizedBox(
                        height: 30,
                      ),

                      ElevatedButton(
                        onPressed: _createAccount,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.pinkColor,
                          foregroundColor: AppColors.screenColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50.0, vertical: 12.0),
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // === Text Below Form ===
              Positioned(
                bottom: 40,
                left: 100,
                child: Column(
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: AppColors.headingColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignIn(),
                          ),
                        );
                      },
                      child: Text(
                        'SIGNIN',
                        style: TextStyle(
                          color: AppColors.pinkColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: 120,
                  height: 5,
                  decoration: BoxDecoration(
                    color: AppColors.headingColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: AppColors.headingColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
