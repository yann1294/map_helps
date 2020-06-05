import 'package:flutter/material.dart';
import 'package:maphelps/screens/introscreen/fireservice.dart';
import 'package:maphelps/screens/introscreen/hospital.dart';
import 'package:maphelps/screens/introscreen/topsection.dart';

import 'clinic.dart';

class MapHelps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TopSection(),
            RecentHospital(),
            SizedBox(height: 20,),
            FireService(),
            SizedBox(height: 20,),
            Clinic(),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
