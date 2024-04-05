import 'package:flutter/material.dart';
import 'package:resume_builder/util.dart';

class Resume_workspace extends StatefulWidget {
  const Resume_workspace({Key? key}) : super(key: key);

  @override
  State<Resume_workspace> createState() => _Resume_workspaceState();
}

class _Resume_workspaceState extends State<Resume_workspace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff0475FF),
        title: Text(
          "Resume Workspace",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
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
              child: Text(
                "Build options",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: resumelist.map(
                      (e) {
                    String? menu = e["menu_name"];
                    String? icon = e["icon"];
                    String route = e["route_name"];
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, route);
                      },
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black12))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 08.0),
                              child: Image.asset("images/icons/${e["icon"]}",),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 80.0),
                              child: Text(
                                menu ?? "",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 23,
                                    letterSpacing: 1,
                                    wordSpacing: 1,
                                    leadingDistribution:
                                    TextLeadingDistribution.even,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 28.0),
                              child: Icon(Icons.arrow_forward_ios),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
