import 'package:flutter/material.dart';
import 'package:offline_session/doctors/doctors.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 100, left: 15, right: 15),
            width: MediaQuery.of(context).size.width,//
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/orange.png')),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Find Your',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Perfect Doctor',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(
            height: 100,
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => DoctorsScreen()));
            },
            child: Container(
              width: 120,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: Center(
                child: Text('Get Started'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
