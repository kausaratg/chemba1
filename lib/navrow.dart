import 'package:flutter/material.dart';

class RowBar extends StatelessWidget {
  const RowBar(
      {super.key,
      required this.rowname,
      required this.textcolor,
      required this.boxcolor,
      required this.bordercolor,
      required this.route});
  final String rowname;
  final textcolor;
  final boxcolor;
  final bordercolor;
  final route;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 115,
      height: 42,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => route));
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: boxcolor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            side: BorderSide(
              color: bordercolor,
              width: 1,
            )),
        child: Center(
          child: Text(rowname,
              style: TextStyle(
                  color: textcolor, fontWeight: FontWeight.w600, fontSize: 16)),
        ),
      ),
    );
  }
}
