import 'package:chemba1/bottomnavigate.dart';
import 'package:chemba1/constants/Apptext.dart';
import 'package:chemba1/constants/assetpart.dart';
import 'package:chemba1/constants/color.dart';
import 'package:chemba1/educate.dart';
import 'package:chemba1/navrow.dart';
import 'package:flutter/material.dart';

import 'events.dart';

class Faq extends StatelessWidget {
  const Faq({super.key});

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
                    textcolor: ChembaColor.textcolor,
                    boxcolor: ChembaColor.rowbarboxside,
                    bordercolor: ChembaColor.borderside,
                    route: Events(),
                  ),
                  RowBar(
                    rowname: MyPageText.faq,
                    textcolor: ChembaColor.rowbarboxside,
                    boxcolor: ChembaColor.greenbackground,
                    bordercolor: ChembaColor.greenbackground,
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
              // Faq items
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    SizedBox(
                      height: 15,
                    );
                    return Column(
                      children: [
                        FaqItems(),
                        SizedBox(
                          height: 15,
                        )
                      ],
                    );
                  }),
            ],
          ),
        ),
      ),
      // bottom navigation bar
      bottomNavigationBar: BottomNavigate(
        radius: 15,
      ),
    );
  }
}

// faq widget
class FaqItems extends StatelessWidget {
  const FaqItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 44,
      decoration: BoxDecoration(
          color: ChembaColor.fillcolor,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              MyPageText.faqtext,
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            Image.asset(ChembaPath.faqicon),
          ],
        ),
      ),
    );
  }
}
