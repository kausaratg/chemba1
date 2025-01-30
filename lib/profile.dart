import 'package:chemba1/bottomnavigate.dart';
import 'package:chemba1/constants/Apptext.dart';
import 'package:chemba1/constants/assetpart.dart';
import 'package:chemba1/constants/color.dart';
import 'package:chemba1/help.dart';
import 'package:chemba1/security.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  // Logo Image
                  Image.asset(
                   ChembaPath.logoPath,
                    width: 115,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  // Profile Text
                  Text(
                    MyPageText.profile,
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: ChembaColor.greenbackground),
                  ),
                ],
              ),
              SizedBox(
                height: 34,
              ),
              Row(
                children: [
                  Container(
                    width: 106,
                    height: 114,
                    decoration: BoxDecoration(
                        color: ChembaColor.greenbackground,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    // User Icon Box
                    child: Center(
                      child: Text(
                        MyPageText.dm,
                        style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w800,
                            color: ChembaColor.signupcolor),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  // User Name and User email
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        MyPageText.name,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w800),
                      ),
                      Text(MyPageText.email,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400))
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 34,
              ),
              // User Points
              Container(
                padding: EdgeInsets.all(20),
                height: 63,
                decoration: BoxDecoration(
                  color: ChembaColor.containerColor,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      MyPageText.point,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      MyPageText.total,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 19,
              ),
              // help and support text
              ProfileBox(
                imageicon: ChembaPath.profileicon1,
                boxtext: MyPageText.help,
                route: Help(),
              ),
              SizedBox(
                height: 19,
              ),
              // Security and Privacy text
              ProfileBox(
                imageicon:  ChembaPath.profileicon2,
                boxtext: MyPageText.security,
                route: Security(),
              ),
              SizedBox(
                height: 118,
              ),
              // logout text
              ProfileBox(
                imageicon: ChembaPath.profileicon3,
                boxtext: MyPageText.logout,
                route: Help(),
              ),
            ],
          ),
        ),
      ),
      //bottom Navigation bar
      bottomNavigationBar: BottomNavigate(radius: 15,),
    );
  }
}

// profile widget
class ProfileBox extends StatelessWidget {
  const ProfileBox(
      {super.key,
      required this.imageicon,
      required this.boxtext,
      required this.route});
  final String imageicon;
  final String boxtext;
  final route;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 63,
      decoration: BoxDecoration(
        color: ChembaColor.containerColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: [
          Image.asset(
            imageicon,
            width: 24.22,
          ),
          SizedBox(
            width: 11.72,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => route));
              },
              child: Text(
                boxtext,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: ChembaColor.textcolor),
              ))
        ],
      ),
    );
  }
}
