import 'package:chemba1/bottomnavigate.dart';
import 'package:chemba1/constants/Apptext.dart';
import 'package:chemba1/constants/assetpart.dart';
import 'package:chemba1/constants/color.dart';
import 'package:chemba1/educate.dart';
import 'package:chemba1/faq.dart';
import 'package:chemba1/navrow.dart';
import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(26),
          child: Column(
            children: [
              //Logo Image
              Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(ChembaPath.logoPath)),
              SizedBox(
                height: 28.44,
              ),
              // Events, FAQ, Educate button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RowBar(
                    rowname: MyPageText.events,
                    textcolor: ChembaColor.rowbarboxside,
                    boxcolor: ChembaColor.greenbackground,
                    bordercolor: ChembaColor.greenbackground,
                    route: Events(),
                  ),
                  RowBar(
                    rowname: MyPageText.faq,
                    textcolor: ChembaColor.textcolor,
                    boxcolor: ChembaColor.rowbarboxside,
                    bordercolor: ChembaColor.borderside,
                    route: Faq(),
                  ),
                  RowBar(
                    rowname: MyPageText.educate,
                    textcolor: ChembaColor.textcolor,
                    boxcolor: ChembaColor.rowbarboxside,
                    bordercolor: ChembaColor.borderside,
                    route: Educate(),
                  ),
                ],
              ),
              SizedBox(
                height: 28,
              ),
              // Events images and texts
              EventItem(
                image: ChembaPath.eventPath1,
                text: MyPageText.event1,
              ),
              SizedBox(
                height: 7,
              ),
              EventItem(
                image: ChembaPath.eventPath2,
                text: MyPageText.event2,
              ),
              SizedBox(
                height: 7,
              ),
              EventItem(
                image: ChembaPath.eventPath3,
                text: MyPageText.event3,
              ),
              //add event button
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: ChembaColor.greenbackground,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: Icon(
                    Icons.add_circle,
                    size: 30,
                    color: ChembaColor.addiconColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      // bottom Navigation bar
      bottomNavigationBar: BottomNavigate(
        radius: 15,
      ),
    );
  }
}

// Events widget
class EventItem extends StatelessWidget {
  const EventItem({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            image,
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
