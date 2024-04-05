import 'package:flutter/material.dart';

class Declaration extends StatefulWidget {
  const Declaration({super.key});

  @override
  State<Declaration> createState() => _DeclarationState();
}

class _DeclarationState extends State<Declaration> {
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
          "Declaration",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            widget(),
          ],
        ),
      ),
    );
  }
}

class widget extends StatefulWidget {
  const widget({super.key});

  @override
  State<widget> createState() => _widgetState();
}

class _widgetState extends State<widget> {
  GlobalKey<FormState> gkey = GlobalKey<FormState>();
  bool isvalied = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(

        width: double.infinity,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Declaration",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 20,color: Colors.blue),
                    ),
                    Switch(
                      value: isvalied,
                      onChanged: (value) {
                        isvalied = value;
                        setState(() {});
                      },
                      activeColor: Colors.blue,
                      autofocus: true,
                      hoverColor: Colors.white,
                      inactiveThumbColor
                          : Colors.blue,
                      trackOutlineColor: MaterialStatePropertyAll(Colors.blue),
                    )
                  ],
                ),
              ),
              if (isvalied)
                Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0, right: 230),
                        child: Image.asset(
                          "images/icons/target.jpg",
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 8.0, left: 20, right: 20),
                      child: TextFormField(
                        validator: (value) {
                          var intval = int.tryParse(value ?? "");
                          if (value?.isEmpty ?? true) {
                            return "Enter valied Date";
                          } else if (intval == null) {
                            return "please Enter Date";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            enabled: true,
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                            hintText: "Description",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),


                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0, left: 30),
                          child: Text(
                            "Date",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 128.0, top: 40),
                          child: Text(
                            "Place(interview\n/venue/city)",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: TextField(
                                keyboardType: TextInputType.datetime,
                                decoration: InputDecoration(
                                    enabled: true,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 2)),
                                    hintText: "DD/MM/YYYY",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            10))),
                              ),
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: TextField(
                                keyboardType: TextInputType.datetime,
                                decoration: InputDecoration(
                                    enabled: true,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 2)),
                                    hintText: "Eg. Surat",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              ),
                            )),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStatePropertyAll(Colors.blue)),
                        onPressed: () {
                          bool isvalied =
                              gkey.currentState?.validate() ?? false;
                          if (isvalied) {
                            gkey.currentState?.save();
                            FocusScope.of(context).unfocus();
                          }
                        },
                        child: Text(
                          "SAVE",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}