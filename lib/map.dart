// import 'package:chemba1/events.dart';
import 'package:chemba1/bottomnavigate.dart';
import 'package:chemba1/constants/assetpart.dart';
import 'package:chemba1/constants/color.dart';
import 'package:flutter/material.dart';

class Map extends StatelessWidget {
  const Map({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            // map image
            Expanded(
                flex: 2,
                child: Image.asset(
                  ChembaPath.mapPath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                )),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(23),
                decoration: BoxDecoration(
                    color: ChembaColor.greenbackground,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: Column(
                  children: [
                    Image.asset(ChembaPath.carImage),
                    SizedBox(
                      height: 15,
                    ),
                    Image.asset(ChembaPath.carImage)
                  ],
                ),
              ),
            )
          ],
        ),
        // bottom navigation bar
      bottomNavigationBar: BottomNavigate(radius: 0,),
      );
  }
}
