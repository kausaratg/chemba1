import 'package:chemba1/bottomnavigate.dart';
import 'package:chemba1/constants/Apptext.dart';
import 'package:chemba1/constants/assetpart.dart';
import 'package:chemba1/constants/color.dart';
import 'package:chemba1/educate.dart';
import 'package:chemba1/events.dart';
import 'package:chemba1/faq.dart';
import 'package:chemba1/navrow.dart';
import 'package:flutter/material.dart';

class Educate2 extends StatelessWidget {
  const Educate2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(33),
          child: Column(
            children: [
              // Image Logo
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
                    rowname: MyPageText.forecast,
                       textcolor: ChembaColor.textcolor,
                    boxcolor: ChembaColor.rowbarboxside,
                    bordercolor: ChembaColor.borderside,
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
                  textcolor: ChembaColor.rowbarboxside,
                    boxcolor: ChembaColor.greenbackground,
                    bordercolor: ChembaColor.greenbackground,
                    route: Educate(),
                  ),
                ],
              ),
              SizedBox(
                height: 59,
              ),
              // type your location form field
              TextFormField(
                decoration: InputDecoration(
                  label: Text(
                    MyPageText.location,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  suffixIcon: Image.asset(ChembaPath.suffixicon),
                  filled: true,
                  fillColor: ChembaColor.fillcolor,
                  enabledBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), 
                    borderSide: BorderSide(
                      color: ChembaColor.containerColor,
                      width: 2.0,
                    ),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 28, horizontal: 30),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              // country, temperature and weather
              Column(
                children: [
                  Text(
                    MyPageText.country,
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    MyPageText.celcius,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    MyPageText.weather,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    MyPageText.wforecast,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  )),
              SizedBox(
                height: 17,
              ),
              // Weather forecast
              Weatherbox(),
              SizedBox(
                height: 29,
              ),
              Weatherbox(),
            ],
          ),
        ),
      ),
      //bottom Navigation bar
      bottomNavigationBar: BottomNavigate(
        radius: 15,
      ),
    );
  }
}

class Weatherbox extends StatelessWidget {
  const Weatherbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: ChembaColor.containerColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          Container(
              width: 47,
              height: 36,
              decoration: BoxDecoration(
                  color: ChembaColor.containerColor,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Center(child: Image.asset(ChembaPath.cloudicon))),
          SizedBox(
            width: 13,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                MyPageText.date,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
              ),
              Text(
                MyPageText.number,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
              ),
              Text(MyPageText.weather)
            ],
          )
        ],
      ),
    );
  }
}
