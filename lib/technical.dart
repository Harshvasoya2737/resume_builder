import 'package:flutter/material.dart';
import 'package:resume_builder/util.dart';

class Technical_skill extends StatefulWidget {
  const Technical_skill({super.key});

  @override
  State<Technical_skill> createState() => _Technical_skillState();
}

class _Technical_skillState extends State<Technical_skill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD2D2D2),
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        backgroundColor: Color(0xff0475FF),
        title: Text(
          "Technical Skills",
          style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child: skill()),
        ],
      ),
    );
  }
}

class skill extends StatefulWidget {
  const skill({super.key});

  @override
  State<skill> createState() => _skillState();
}

List<TextEditingController> skilllist = [];

class _skillState extends State<skill> {
  TextEditingController namecontroller10 = TextEditingController();
  GlobalKey<FormState> gkey = GlobalKey<FormState>();
  bool isvalied = false;
  String technicalskill = "";

  @override
  void initState() {
    namecontroller10.text = resume.technicalskill ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            color: Color(0xff0475FF),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey, offset: Offset(0.9, 0.9), blurRadius: 10),
              ]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Text(
                      "Enter your skills",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Form(
                    key: gkey,
                    child: Column(
                      children: skilllist.map(
                        (e) {
                          return Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 18.0),
                                  child: TextFormField(
                                    validator: (value) {
                                      if (isvalied) {
                                        return "please Enter your Skills";
                                      } else {
                                        return null;
                                      }
                                    },
                                    decoration: InputDecoration(
                                        hintText: "Please Enter your skills"),
                                    controller: e,
                                  ),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    skilllist.remove(e);
                                    setState(() {});
                                  },
                                  icon: Icon(Icons.delete_forever_outlined,size: 35,))
                            ],
                          );
                        },
                      ).toList(),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.all(10),
                    child: OutlinedButton(
                      onPressed: () {
                        skilllist.add(TextEditingController());
                        setState(() {});
                      },
                      child: Icon(Icons.add,size: 40,),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        skilllist.forEach((element) {
                          print(element.text);
                          gkey.currentState?.save();
                          FocusScope.of(context).unfocus();
                          resume.technicalskill = namecontroller10.text;
                        });
                      },
                      child: Text("SAVE",style: TextStyle(fontSize: 25),),
                    ),
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
