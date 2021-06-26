import 'package:flutter/material.dart';

import '../constants.dart';
import '../Widgets/validate_student_entry_widget.dart';
import '../Widgets/create_account_widget.dart';

class StudentSignUp extends StatefulWidget {
  @override
  _StudentSignUpState createState() => _StudentSignUpState();
}

class _StudentSignUpState extends State<StudentSignUp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          CreateAccountWidget(
            createString: 'Create',
            accountString: 'Account',
          ),
          Form(
              key: null,
              child: Column(
                children: [
                  ValidateStudentEntry(
                    textFormWidget: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'fullname',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  ValidateStudentEntry(
                    textFormWidget: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Phone Number',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  ValidateStudentEntry(
                    textFormWidget: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'e-mail',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  ValidateStudentEntry(
                    textFormWidget: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'password',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  ValidateStudentEntry(
                    textFormWidget: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'confirm password',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    width: size.width,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: TextButton(
                      onPressed: null,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'By creating an account, you agree to the',
                        style: TextStyle(fontSize: 10),
                      ),
                      InkWell(
                          onTap: null,
                          child: Text(
                            'Terms of Service',
                            style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                                fontSize: 10),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(fontSize: 10),
                      ),
                      InkWell(
                          onTap: null,
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ))
                    ],
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
