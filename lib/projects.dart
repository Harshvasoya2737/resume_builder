import 'package:flutter/material.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD2D2D2),
      appBar: AppBar(
        leading: InkWell( onTap: () {
          Navigator.pop(context);
        },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        backgroundColor:  Color(0xff0475FF),
        title: Text(
          "Projects",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 25),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(child: Projectwidget()),
        ],
      ),
    );
  }
}

class Projectwidget extends StatefulWidget {
  const Projectwidget({super.key});

  @override
  State<Projectwidget> createState() => _ProjectwidgetState();
}

class _ProjectwidgetState extends State<Projectwidget> {
  GlobalKey<FormState> gkey = GlobalKey<FormState>();
  String? maritalStatus;
  bool isen = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 60,
            width: double.infinity,
            color: Color(0xff0475FF),
          ),
          Container(
            height: 800,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 208.0, top: 30),
                  child: Text(
                    "Project Title",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Color(0xffF4F4F4),
                        enabled: true,
                        filled: true,

                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width: 2)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Resume Builder App"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 208.0, top: 20),
                  child: Text(
                    "Technologies",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ),
                CheckboxListTile(
                    value: isen,
                    onChanged: (value) {
                      isen = value ?? true;
                      setState(() {});
                    },
                    enabled: true,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(
                      "C programming",
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    )),
                CheckboxListTile(
                    value: isen,
                    onChanged: (value) {
                      isen = value ?? true;
                      setState(() {});
                    },
                    enabled: true,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(
                      "C++",
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    )),
                CheckboxListTile(
                    value: isen,
                    onChanged: (value) {
                      isen = value ?? true;
                      setState(() {});
                    },
                    enabled: true,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(
                      "Flutter",
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    )),
                Padding(
                  padding: const EdgeInsets.only(right: 280.0, top: 20),
                  child: Text(
                    "Roles",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 28, right: 28),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Color(0XFFF4F4F4),
                        enabled: true,
                        filled: true,

                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width: 2)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Organize team members,code analysis"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 208.0, top: 20),
                  child: Text(
                    "Technologies",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 28, right: 28),
                  child: TextField(

                    decoration: InputDecoration(
                        fillColor: Color(0xffF4F4F4),
                        enabled: true,
                        filled: true,

                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width: 2)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "5 - Programmers"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 158.0, top: 20),
                  child: Text(
                    "Project Description",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 28, right: 28),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Color(0xffF4F4F4),
                        enabled: true,
                        filled: true,

                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width: 2)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Enter your Project Description"),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStatePropertyAll(Colors.blue)),
                    onPressed: () {},
                    child: Text(
                      "SAVE",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}