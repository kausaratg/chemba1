import 'package:chemba1/constants/Apptext.dart';
import 'package:chemba1/constants/assetpart.dart';
import 'package:chemba1/constants/color.dart';
import 'package:chemba1/register.dart';
import 'package:flutter/material.dart';
import 'package:chemba1/map.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(60),
        child: Column(
          children: [
            // logo
            Align(
                alignment: Alignment.center,
                child: Image.asset(ChembaPath.logoPath)),
            SizedBox(
              height: 59,
            ),

            // form field
            LoginForm(labeltext: MyPageText.label2),
            SizedBox(
              height: 25,
            ),
            LoginForm(labeltext: MyPageText.label3),
            SizedBox(
              height: 14,
            ),
            // forget password text
            Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  MyPageText.forget,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                )),
            SizedBox(
              height: 14,
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
                            color: ChembaColor.borderside,
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
            // register account text
            Center(
                child: Column(children: [
              Text(
                MyPageText.noaccount,
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
                          builder: (context) => const Register()));
                },
                child: Text(
                  MyPageText.register,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: ChembaColor.textcolor),
                ),
              )
            ]))
          ],
        ),
      ),
    );
  }
}

// form field widget
class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.labeltext,
  });
  final String labeltext;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          label: Text(labeltext),
          labelStyle:
              TextStyle(color:ChembaColor.textcolor, fontWeight: FontWeight.w700),
          filled: true,
          fillColor: ChembaColor.fillcolor,
          contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: ChembaColor.borderside,
            width: 1,
          ))),
    );
  }
}
