import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:resume_builder/util.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

int page = 0;

class _ExperienceState extends State<Experience> {
  GlobalKey<FormState> gkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD2D2D2),
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
          "Experience",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 25),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(child: Experiencewidget()),
        ],
      ),
    );
  }
}

class Experiencewidget extends StatefulWidget {
  const Experiencewidget({super.key});

  @override
  State<Experiencewidget> createState() => _ExperiencewidgetState();
}

class _ExperiencewidgetState extends State<Experiencewidget> {
  TextEditingController namecontroller11 = TextEditingController();
  TextEditingController namecontroller6 = TextEditingController();
  TextEditingController namecontroller12 = TextEditingController();
  GlobalKey<FormState> gkey = GlobalKey<FormState>();
  String? employed;
  bool isvalied = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    namecontroller11.text = resume.company ?? "";
    namecontroller6.text = resume.university ?? "";
    namecontroller12.text = resume.roles ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Center(
            child: Container(
              height: 800,
              width: double.infinity,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0, right: 150),
                    child: Text(
                      "Comapany Name",
                      style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 20,color: Colors.blue),
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(top: 8.0, left: 30, right: 30),
                    child: TextFormField(
                      controller: namecontroller11,
                      decoration: InputDecoration(
                          fillColor: Color(0xffF4F4F4),
                          enabled: true,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.black, width: 2)),
                          hintText: "New Enterprise,San Francisco",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0, right: 85),
                    child: Text(
                      "School/College/Institute",
                      style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 20,color: Colors.blue),
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(top: 8.0, left: 30, right: 30),
                    child: TextFormField(
                      controller: namecontroller6,
                      decoration: InputDecoration(
                          fillColor: Color(0xffF4F4F4),
                          enabled: true,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.black, width: 2)),
                          hintText: "Quality Test Engineer",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0, right: 175),
                    child: Text(
                      "Roles(optional)",
                      style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 20,color: Colors.blue),
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(top: 8.0, left: 30, right: 30),
                    child: TextFormField(
                      controller: namecontroller12,
                      maxLines: 3,
                      decoration: InputDecoration(
                          fillColor: Color(0xffF4F4F4),
                          enabled: true,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.black, width: 2)),
                          hintText:
                          "Working with team members to come up with new concepts and product analysis..",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 200.0, top: 20),
                    child: Text(
                      "Employed Status",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                            value: "Previoslt Employed",
                            groupValue: employed,
                            onChanged: (value) {
                              employed = value;

                              setState(() {});
                            },
                            title: Text("Previosly Employed"),
                            fillColor: MaterialStatePropertyAll(Colors.cyan)),
                      ),
                      Expanded(
                        child: RadioListTile(
                            value: "Currently Employed",
                            groupValue: employed,
                            onChanged: (value) {
                              employed = value;

                              setState(() {});
                            },
                            title: Text("Currently Employed"),
                            fillColor: MaterialStatePropertyAll(Colors.cyan)),
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 28.0,
                        ),
                        child: Text(
                          "Date Joined",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 88.0,
                        ),
                        child: Text(
                          "Date Exit",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: TextField(
                              keyboardType: TextInputType.datetime,
                              decoration: InputDecoration(
                                  fillColor: Color(0xffF4F4F4),
                                  enabled: true,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 2)),
                                  hintText: "DD/MM/YYYY",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            )),
                        SizedBox(
                          width: 50,
                        ),
                        Expanded(
                            child: TextField(
                              keyboardType: TextInputType.datetime,
                              decoration: InputDecoration(
                                  fillColor: Color(0xffF4F4F4),
                                  enabled: true,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 2)),
                                  hintText: "DD/MM/YYYY",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            )),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStatePropertyAll(Colors.blue)),
                        onPressed: () {
                          bool isvalid = gkey.currentState?.validate() ?? true;
                          if (isvalid) {
                            gkey.currentState?.save();
                            FocusScope.of(context).unfocus();
                            resume.roles = namecontroller12.text;
                            resume.company = namecontroller11.text;
                            resume.university = namecontroller6.text;
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Column(
                                  children: [
                                    Text(
                                      "you successfully added...",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20),
                                    ),
                                  ],
                                )));
                          }
                        },
                        child: Text(
                          "SAVE",
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}