import 'package:flutter/material.dart';

List<Map<String,dynamic>> resumelist=[
  {
    "menu_name":"Contact Info",
    "icon": "contact-books.png",
    "route_name":"Contact_info",
  },
  {
    "menu_name":"Carrier objective",
    "icon": "briefcase.png",
    "route_name":"Carrier_obj",
  },
  {
    "menu_name":" Personal Detail",
    "icon": "user.png",
    "route_name":"Personal_detail",
  },
  {
    "menu_name":"Education",
    "icon": "mortarboard.png",
    "route_name":"Education",

  },
  {
    "menu_name":"Experience",
    "icon": "thinking.png",
    "route_name":"Experience",
  },
  {
    "menu_name":"Technical Skill",
    "icon": "open-cardboard-box.png",
    "route_name":"Technical_skill",
  },
  {
    "menu_name":"Interest/Hobbies",
    "icon": "open-book.png",
    "route_name":"Hobbies",
  },
  {
    "menu_name":"Project",
    "icon": "project.png",
    "route_name":"Project",
  },
  {
    "menu_name":"Achievements",
    "icon": "experience.png",
    "route_name":"Achievement",
  },
  {
    "menu_name":"References",
    "icon": "handshake.png",
    "route_name":"References",
  },
  {
    "menu_name":"Declaration",
    "icon": "declaration.png",
    "route_name":"Declaration",
  },

];

Resume resume=Resume();

class Resume {
  String? fname;
  String? email;
  String? phone;
  String? address;
  String? address1;
  String? address2;
  String? coureses;
  String? university;
  String?  marks;
  String? technicalskill;
  String? experience;
  String? year;
  String? imgfile;
  String? company;
  String? roles;



}