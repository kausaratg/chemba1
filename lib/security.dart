import 'package:chemba1/bottomnavigate.dart';
import 'package:chemba1/constants/Apptext.dart';
import 'package:chemba1/constants/assetpart.dart';
import 'package:chemba1/constants/color.dart';
import 'package:flutter/material.dart';

class Security extends StatelessWidget {
  const Security({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(36),
        child: Column(
          children: [
            Row(
              // Logo Image
              children: [
                Image.asset(
                  ChembaPath.logoPath,
                  width: 115,
                  height: 43,
                ),
                SizedBox(width: 7,),
                // Security and privacy text
                Text(
                  MyPageText.security,
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: ChembaColor.greenbackground),
                ),
              ],
            ),
            SizedBox(height: 73,),
            // privacy policy box
            SecurityBox(
                imageicon:ChembaPath.securityicon1,
                boxtext: MyPageText.securitybox1),
            SizedBox(
              height: 28,
            ),
            // Terms of Service box
            SecurityBox(
                imageicon:ChembaPath.securityicon2,
                boxtext: MyPageText.securitybox2),
            SizedBox(
              height: 28,
            ),
            //Devices
            SecurityBox(
                imageicon:ChembaPath.securityicon3,
                boxtext: MyPageText.securitybox3)
          ],
        ),
      ),
      //bottom Navigation bar
      bottomNavigationBar: BottomNavigate(radius: 15,),
    );
  }
}
// Security Widget
class SecurityBox extends StatelessWidget {
  const SecurityBox({
    super.key,
    required this.imageicon,
    required this.boxtext,
  });
  final String imageicon;
  final String boxtext;

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
            width: 25,
          ),
          SizedBox(
            width: 14,
          ),
          Text(
            boxtext,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: ChembaColor.textcolor),
          )
        ],
      ),
    );
  }
}
