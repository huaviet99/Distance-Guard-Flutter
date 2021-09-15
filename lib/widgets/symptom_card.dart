import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SymptomCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  SymptomCard(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFFF4B63).withOpacity(0.3),
              spreadRadius: 1,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
          color: Colors.white,
        ),
        child: Column(
          children: [
            Image.asset(this.imageUrl),
            SizedBox(height: 5.0),
            Text(
              this.title,
              style: TextStyle(
                color: Color(0xFFFF4B63),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
