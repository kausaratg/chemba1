import 'package:chemba1/constants/assetpart.dart';
import 'package:chemba1/constants/color.dart';
import 'package:chemba1/educate2.dart';
import 'package:chemba1/profile.dart';
import 'package:flutter/material.dart';
import 'package:chemba1/events.dart';
import 'package:chemba1/map.dart';

class BottomNavigate extends StatelessWidget {
  const BottomNavigate({super.key, required this.radius});

  final double radius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(radius), topRight: Radius.circular(radius)),
      child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: ChembaColor.greenbackground,
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Map()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ChembaColor.greenbackground,
                      elevation: 0.0,
                    ),
                    icon: Image.asset(ChembaPath.bottomnavigateicon1)),
                label: ChembaPath.emptytext),
            BottomNavigationBarItem(
                icon: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Events()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ChembaColor.greenbackground,
                      elevation: 0.0,
                    ),
                    icon: Image.asset(ChembaPath.bottomnavigateicon2)),
                label: ChembaPath.emptytext),
            BottomNavigationBarItem(
                icon: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Profile()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ChembaColor.greenbackground,
                      elevation: 0.0,
                    ),
                    icon: Image.asset(ChembaPath.bottomnavigateicon3)),
                label: ChembaPath.emptytext),
            BottomNavigationBarItem(
                icon: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Educate2()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ChembaColor.greenbackground,
                      elevation: 0.0,
                    ),
                    icon: Image.asset(ChembaPath.bottomnavigateicon4)),
                label: ChembaPath.emptytext),
          ]),
    );
  }
}
