import 'package:chemba1/bottomnavigate.dart';
import 'package:chemba1/constants/Apptext.dart';
import 'package:chemba1/constants/assetpart.dart';
import 'package:chemba1/constants/color.dart';
import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(41),
          child: Column(
            children: [
              Row(
                children: [
                  // Logo Image
                  Image.asset(
                   ChembaPath.logoPath,
                    width: 115,
                    height: 43,
                  ),
                   SizedBox(width:12,),
                   // Help and Support Text
                  Align(
                    alignment:  Alignment.topLeft,
                    child: Text(
                      MyPageText.help,
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: ChembaColor.greenbackground),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 9,
              ),
              // short paragraph text
              Text(MyPageText.helptext,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(
                height: 46,
              ),
              // chat with support box
              HelpBox(
                  imageicon: ChembaPath.helpicon1,
                  boxtext: MyPageText.textbox1),
              SizedBox(
                height: 30,
              ),
              // send email box
              HelpBox(
                  imageicon: ChembaPath.helpicon2,
                  boxtext: MyPageText.textbox2),
              SizedBox(
                height: 100,
              ),
              Text(
                MyPageText.connect,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: ChembaColor.greenbackground),
              ),
              SizedBox(
                height: 38,
              ),
              // Social media icons
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(ChembaPath.facebookicon),
                      SizedBox(
                        height: 56,
                      ),
                      Image.asset(ChembaPath.instagramicon)
                    ],
                  ),
                  SizedBox(
                    width: 51,
                  ),
                  Column(
                    children: [
                      Image.asset(ChembaPath.twittericon),
                      SizedBox(
                        height: 56,
                      ),
                      Image.asset(ChembaPath.youtubeicon)
                    ],
                  ),
                  SizedBox(
                    width: 51,
                  ),
                  Image.asset(ChembaPath.linkdelnicon)
                ],
              )
            ],
          ),
        ),
      ),
      //bottom Navigation bar
      bottomNavigationBar: BottomNavigate(radius: 15,),
    );
  }
}

class HelpBox extends StatelessWidget {
  const HelpBox({
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
            width: 24.22,
          ),
          SizedBox(
            width: 14,
          ),
          Text(
            boxtext,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: ChembaColor.textcolor),
          )
        ],
      ),
    );
  }
}
