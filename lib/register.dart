import 'package:chemba1/constants/Apptext.dart';
import 'package:chemba1/constants/assetpart.dart';
import 'package:chemba1/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:chemba1/map.dart';
import 'package:chemba1/login.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  // logo
                  alignment: Alignment.center,
                  child: Image.asset(ChembaPath.logoPath)),
              SizedBox(
                height: 25.44,
              ),
              // textform
              RegisterForm(
                labeltext: MyPageText.label1,
                height: 20,
              ),
              SizedBox(
                height: 25,
              ),
              RegisterForm(
                labeltext: MyPageText.label2,
                height: 20,
              ),
              SizedBox(
                height: 25,
              ),
              RegisterForm(
                labeltext: MyPageText.label3,
                height: 20,
              ),
              SizedBox(
                height: 25,
              ),
              RegisterForm(
                labeltext: MyPageText.label4,
                height: 60,
              ),
              SizedBox(
                height: 25,
              ),
              // Sign Up button
              SizedBox(
                width: 239,
                height: 63,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Map()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ChembaColor.greenbackground,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                            side: BorderSide(
                              color:ChembaColor.borderside,
                              width: 1,
                            ))),
                    child: Text(
                      MyPageText.signup,
                      style: TextStyle(
                        color: ChembaColor.signupcolor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              // Login account text
              Center(
                  child: Column(
                children: [
                  Text(
                    MyPageText.account,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    child: Text(
                      MyPageText.signin,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: ChembaColor.textcolor),
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

// form field widget

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
    required this.labeltext,
    required this.height,
  });
  final String labeltext;
  final double height;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          label: Text(labeltext),
          labelStyle:
              TextStyle(color: ChembaColor.textcolor, fontWeight: FontWeight.w700),
          filled: true,
          fillColor: ChembaColor.fillcolor,
          contentPadding:
              EdgeInsets.symmetric(vertical: height, horizontal: 20),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: ChembaColor.borderside,
            width: 1,
          ))),
    );
  }
}
