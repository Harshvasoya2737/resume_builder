import 'package:flutter/material.dart';

class Personal_detail extends StatefulWidget {
  const Personal_detail({super.key});

  @override
  State<Personal_detail> createState() => _Personal_detailState();
}

class _Personal_detailState extends State<Personal_detail> {
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
          "Personal_details",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 25),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: detail(),
    );
  }
}

class detail extends StatefulWidget {
  const detail({super.key});

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  GlobalKey<FormState> gkey = GlobalKey<FormState>();
  String? maritalStatus;
  bool isen = false;
  bool ishi = false;
  bool isgu = false;

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
          Form(
            key: gkey,
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 275, top: 25),
                      child: Text(
                        "DOB",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 35, right: 30),
                      child: TextFormField(
                        keyboardType: TextInputType.datetime,
                        validator: (value) {
                          if (value?.isEmpty ?? true) {
                            return " * Please Enter Date of Birthdate";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          fillColor: Color(0xffF4F4F4),
                          enabled: true,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black, width: 2)),
                          hintText: "DD/MM/YYYY",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 168.0, top: 20),
                      child: Text(
                        "Marital Status",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ),
                    RadioListTile(
                      value: "single",
                      groupValue: maritalStatus,
                      onChanged: (value) {
                        maritalStatus = value;
                        setState(() {});
                      },
                      title: Text(
                        "Single",
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                      ),
                      fillColor: MaterialStatePropertyAll(Colors.blue),
                    ),
                    RadioListTile(
                      value: "Married",
                      groupValue: maritalStatus,
                      onChanged: (value) {
                        maritalStatus = value;
                        setState(() {});
                      },
                      title: Text(
                        "Married",
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                      ),
                      fillColor: MaterialStatePropertyAll(Colors.blue),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0, right: 145),
                      child: Text(
                        "Languages Known",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w700,
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
                          "English",
                          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                        )),
                    CheckboxListTile(
                        value: ishi,
                        onChanged: (value) {
                          ishi = value ?? true;
                          setState(() {});
                        },
                        enabled: true,
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text(
                          "Hindi",
                          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                        )),
                    CheckboxListTile(
                      value: isgu,
                      onChanged: (value) {
                        isgu = value ?? true;
                        setState(() {});
                      },
                      enabled: true,
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text(
                        "Gujarati",
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, right: 199),
                      child: Text(
                        "Nationality",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0, left: 32, right: 32),
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            fillColor: Color(0xffF4F4F4F4),
                            enabled: true,
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                            hintText: "Indian",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Colors.blue,
                              )),
                          onPressed: () {
                            bool isvalid = gkey.currentState?.validate() ?? true;
                            if (isvalid) {
                              gkey.currentState?.save();
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
          ),
        ],
      ),
    );
  }
}