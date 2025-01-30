import 'package:chemba1/bottomnavigate.dart';
import 'package:chemba1/constants/Apptext.dart';
import 'package:chemba1/constants/assetpart.dart';
import 'package:chemba1/constants/color.dart';
import 'package:chemba1/events.dart';
import 'package:chemba1/faq.dart';
import 'package:chemba1/navrow.dart';
import 'package:flutter/material.dart';

class Educate extends StatefulWidget {
  const Educate({super.key});

  @override
  State<Educate> createState() => _EducateState();
}

class _EducateState extends State<Educate> {
  bool _isOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(33),
          child: Column(
            children: [
              // Logo Image
              Align(
                alignment: Alignment.topLeft,
                child: Image.asset(ChembaPath.logoPath),
              ),
              SizedBox(
                height: 28.44,
              ),
              // Events, FAQ, Educate button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RowBar(
                    rowname: MyPageText.events,
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
                height: 38,
              ),
              // What is waste question
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size(50, 30),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () {
                  setState(() {
                    _isOpen = !_isOpen; // Toggle the state
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: ChembaColor.fillcolor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        MyPageText.waste,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: ChembaColor.textcolor),
                      ),
                      Image.asset(ChembaPath.faqicon)
                    ],
                  ),
                ),
              ),
              // Result
              if (_isOpen)
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: ChembaColor.containerColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Center(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    MyPageText.wastemangement,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    softWrap: true,
                                  ),
                                  Image.asset(ChembaPath.arrowup)
                                ],
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Text(
                                MyPageText.wasteexplanation,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                                softWrap: true,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              // Educate items
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: ChembaColor.containerColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      MyPageText.importance,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    Image.asset(ChembaPath.faqicon)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: ChembaColor.containerColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      MyPageText.type,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    Image.asset(ChembaPath.faqicon)
                  ],
                ),
              ),
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
