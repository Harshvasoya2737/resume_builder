import 'package:flutter/material.dart';

class Carrier_obj extends StatefulWidget {
  const Carrier_obj({super.key});

  @override
  State<Carrier_obj> createState() => _Carrier_objState();
}

class _Carrier_objState extends State<Carrier_obj> {
  GlobalKey<FormState> gkey = GlobalKey<FormState>();
  TextEditingController namecontroller = TextEditingController();
  String name = "";
  bool isvalied = true;

  @override
  void initState() {}

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
            )),
        backgroundColor: Colors.blue,
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            "Carrier objective",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 25),
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: 70,
            width: double.infinity,
            color: Colors.blue,
          ),
          Expanded(child: carrier()),
        ],
      ),
    );
  }
}

class carrier extends StatefulWidget {
  const carrier({super.key});

  @override
  State<carrier> createState() => _carrierState();
}

class _carrierState extends State<carrier> {
  GlobalKey<FormState> gkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: gkey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 350,
                width: double.infinity,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Text(
                              "Carrer Objective",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: TextFormField(
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return "* Enter Description";
                            } else {
                              return null;
                            }
                          },
                          onChanged: (value) {
                            name:
                            value;
                            print("$value");
                          },
                          maxLines: 7,
                          decoration: InputDecoration(
                              hintText: "Description",
                              fillColor: Color(0xffF4F4F4),
                              filled: true,
                              enabled: true,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(width: 2),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.blue)),
                          onPressed: () {
                            bool isvalied =
                                gkey.currentState?.validate() ?? true;

                            if (isvalied) {
                              gkey.currentState?.save();
                              FocusScope.of(context).unfocus();
                              gkey.currentState?.save();
                            }
                          },
                          child: Text(
                            "Save",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 250,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10, right: 10, left: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 58.0, right: 35),
                      child: Text(
                        "Current Designation(Experienced\nCandidate",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 20, right: 20),
                        child: TextFormField(
                            validator: (value) {
                              if (value?.isEmpty ?? true) {
                                return " * Enter Designation";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              hintText: "Software Engineer",
                              fillColor: Color(0xffF4F4F4),
                              filled: true,
                              enabled: true,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(width: 2),
                                // border: OutlineInputBorder(
                                //     borderSide: BorderSide(color: Colors.grey),
                                //     borderRadius: BorderRadius.circular(5))),
                              ),
                            ))),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue)),
                        onPressed: () {
                          bool isvalied = gkey.currentState?.validate() ?? true;
                          gkey.currentState?.save();

                          FocusScope.of(context).unfocus();
                        },
                        child: Text(
                          "Save",
                          style: TextStyle(color: Colors.white),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
