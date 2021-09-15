import 'package:distance_guard_flutter/widgets/prevention_card.dart';
import 'package:distance_guard_flutter/widgets/symptom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InformationPage extends StatefulWidget {
  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF4B63),
      body: SafeArea(
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification overScroll) {
            overScroll.disallowGlow();
            return false;
          },
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  _buildInformationHeader(),
                  _buildInformationContent(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInformationHeader() {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'What To Do\nIf You Are Sick?',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      onPrimary: Color(0xFFFF4B63),
                      primary: Colors.white,
                    ),
                    onPressed: () {},
                    child: Text(
                      'CALL HERE',
                      style: TextStyle(
                        color: Color(0xFFFF4B63),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      onPrimary: Color(0xFF007BFF),
                      primary: Colors.white,
                    ),
                    onPressed: () {},
                    child: Text(
                      'SEND SMS',
                      style: TextStyle(
                        color: Color(0xFF007BFF),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SvgPicture.asset('images/img_information_character.svg'),
        ],
      ),
    );
  }

  Widget _buildInformationContent() {
    return IntrinsicHeight(
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
          color: Colors.white,
        ),
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Symptoms',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Color(0xFFFF4B63),
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SymptomCard('Headache', 'images/img_headache.png'),
                SizedBox(width: 10.0),
                SymptomCard('Cough', 'images/img_cough.png'),
                SizedBox(width: 10.0),
                SymptomCard('Fever', 'images/img_fever.png'),
              ],
            ),
            SizedBox(height: 10.0),
            Text(
              'Preventions',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Color(0xFFFF4B63),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  PreventionCard(
                    'Wear face mask',
                    'Everyone should wear a cloth face cover when they have to go out in public, for example to the grocery store or to pick up other necessities.',
                    'images/img_wear_face_mask.svg',
                  ),
                  SizedBox(height: 10.0),
                  PreventionCard(
                    'Use Nose Rag or Tissue',
                    'If you are in a private setting and do not have on your cloth face covering, remember to always cover your mouth and nose with a tissue when you cough or sneeze or use the inside of your elbow.',
                    'images/img_nose_rag.svg',
                  ),
                  SizedBox(height: 10.0),
                  PreventionCard(
                    'Avoid Contact',
                    'Avoid close contact with people who are sick, even inside your home. If possible, maintain 6 feet between the person who is sick and other household members.',
                    'images/img_shake_hand.svg',
                  ),
                  SizedBox(height: 10.0),
                  PreventionCard(
                    'Wash your hands',
                    'Wash your hands often with soap and water for at least 20 seconds especially after you have been in a public place, or after blowing your nose, coughing, or sneezing.',
                    'images/img_wash_hand.svg',
                  ),
                  SizedBox(height: 10.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInformationBackground(Size screenSize) {
    return Container(
      height: screenSize.height,
      margin: EdgeInsets.only(top: screenSize.height * 0.25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
        color: Colors.white,
      ),
    );
  }
}
