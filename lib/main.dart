import 'package:flutter/material.dart';
import 'package:resume_builder/achievements.dart';
import 'package:resume_builder/carrier.dart';
import 'package:resume_builder/contact_page.dart';
import 'package:resume_builder/declaration.dart';
import 'package:resume_builder/education.dart';
import 'package:resume_builder/experiences.dart';
import 'package:resume_builder/projects.dart';
import 'package:resume_builder/home_page.dart';
import 'package:resume_builder/personal.dart';
import 'package:resume_builder/references.dart';
import 'package:resume_builder/resume_workspace.dart';
import 'package:resume_builder/splash.dart';
import 'package:resume_builder/technical.dart';
import 'package:resume_builder/hobbies.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.fallback(useMaterial3: true),
      initialRoute: "Splash_screen",
      routes: {
        "Splash_screen": (context) => Splash_screen (),
        "Homepage": (context) => Homepage(),
        "Achievement": (context) => Achievement(),
        "Personal_detail": (context) => Personal_detail(),
        "Declaration": (context) => Declaration(),
        "Resume_workspace": (context) =>  Resume_workspace(),
        "Contact_info": (context) =>  Contact_info(),
        "Carrier_obj": (context) => Carrier_obj(),
        "Education": (context) => Education(),
        "Hobbies": (context) => Hobbies(),
        "Project": (context) => Projects(),
        "References": (context) => Refrences(),
        "Experience": (context) => Experience(),
        "Technical_skill": (context) => Technical_skill(),
      },
    );
  }
}