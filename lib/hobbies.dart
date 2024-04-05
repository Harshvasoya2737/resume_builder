import 'package:flutter/material.dart';

class Hobbies extends StatefulWidget {
  const Hobbies({super.key});

  @override
  State<Hobbies> createState() => _HobbiesState();
}

class _HobbiesState extends State<Hobbies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell
          ( onTap: () {
          Navigator.pop(context);
        },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        backgroundColor: Color(0xff0475FF),
        title: Text(
          "Hobbies",
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 25),
        ),centerTitle: true,elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            width: double.infinity,
            color: Color(0xff0475FF),
          )
        ],
      ),
    );
  }
}
