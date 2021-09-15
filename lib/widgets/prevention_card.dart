import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PreventionCard extends StatelessWidget {
  final String title;
  final String content;
  final String imageUrl;

  PreventionCard(this.title, this.content, this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
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
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: SvgPicture.asset(
                this.imageUrl,
                height: 120.0,
                width: 120.0,
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.title,
                    style: TextStyle(
                      color: Color(0xFFFF4B63),
                    ),
                  ),
                  Text(this.content),
                ],
              ),
            ),
          ],
        ));
  }
}
