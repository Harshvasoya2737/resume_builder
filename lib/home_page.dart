import 'package:flutter/material.dart';
import 'package:resume_builder/my_pdf.dart';
import 'package:resume_builder/resume_workspace.dart'; // Import util.dart for the resumelist

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0475FF),
        title: Text(
          "Resume Builder",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return My_pdf();
                }));
              },
              child: Icon(Icons.picture_as_pdf_rounded, color: Colors.white),
            ),
          ),
        ],
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff0475FF),
              ),
              child: Text("Name=Harsh Vasoya \nWork=Student\nStudy=Diploma in Computer Enginnering + Flutter Development\nMail=VasoyaHarsh@gmail.com\nContact No=090909090909",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.work),
              title: Text('Resume Workspace'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Resume_workspace();
                }));
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff0475FF),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Text(
                  "RESUMES",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 68.0),
            child: Image.asset(
              "images/icons/open-cardboard-box.png",
              height: 60,
              width: 60,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              "No Resumes + Create new resume.",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        height: 80,
        width: 80,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "Resume_workspace");
          },
          shape: CircleBorder(),
          backgroundColor: Colors.blue,
          child: Icon(
            Icons.add,
            size: 80,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
