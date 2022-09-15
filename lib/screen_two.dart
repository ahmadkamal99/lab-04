import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class screen_two extends StatefulWidget {
  const screen_two({super.key});

  @override
  State<screen_two> createState() => _screen_twoState();
}

class _screen_twoState extends State<screen_two> {
  List myItems = ["2-5 person", "5-7 person", "7-10 person"];
  String item = "2-5 person";
  String class_name = "";
  bool check = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
            child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2017/06/08/17/52/compass-2384365__340.png"))),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: double.infinity,
                      child: Text(
                        "please enter information",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 5, 54, 77),
                            backgroundColor:
                                Color.fromARGB(255, 219, 193, 115)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        "How many person ?",
                        style: TextStyle(fontSize: 40, color: Colors.pink),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      color: Color.fromARGB(255, 182, 102, 154),
                      child: DropdownButton(
                          value: item,
                          items: myItems
                              .map((e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(
                                    "$e",
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Color.fromARGB(255, 25, 9, 117)),
                                  )))
                              .toList(),
                          onChanged: ((val) {
                            setState(() {
                              item = val.toString();
                            });
                          })),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: Text(
                        "please select your class !",
                        style: TextStyle(fontSize: 30, color: Colors.pink),
                      ),
                    ),
                    Container(
                      child: RadioListTile(
                          subtitle: Text(
                            "Hot !! only 200 per person",
                            style: TextStyle(
                                fontSize: 15, color: Colors.blueAccent),
                          ),
                          title: Text(
                            "Business",
                            style: TextStyle(fontSize: 20),
                          ),
                          value: "Business",
                          groupValue: class_name,
                          onChanged: ((val) {
                            setState(() {
                              class_name = val.toString();
                            });
                          })),
                    ),
                    Container(
                      child: RadioListTile(
                          subtitle: Text(
                            "Hot !! 150 per person",
                            style: TextStyle(
                                fontSize: 15, color: Colors.blueAccent),
                          ),
                          title: Text(
                            "Economy",
                            style: TextStyle(fontSize: 20),
                          ),
                          value: "Economy",
                          groupValue: class_name,
                          onChanged: ((val) {
                            setState(() {
                              class_name = val.toString();
                            });
                          })),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                    ),
                    Container(
                      color: Color.fromARGB(255, 194, 147, 163),
                      child: Text(
                        "Please Select whatever you have during the trip",
                        style: TextStyle(fontSize: 25, color: Colors.pink),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                    ),
                    Container(
                      child: CheckboxListTile(
                          secondary: Icon(Icons.pets),
                          subtitle: Text("Cats ,dogs ,Rubbits"),
                          title: Text(
                            "Pets",
                            style: TextStyle(fontSize: 20),
                          ),
                          value: check,
                          onChanged: ((val) {
                            setState(() {
                              check = val!;
                            });
                          })),
                    ),
                    Container(
                      child: CheckboxListTile(
                          secondary: Icon(Icons.pets),
                          subtitle: Text("Panadole"),
                          title: Text(
                            "Medicine",
                            style: TextStyle(fontSize: 20),
                          ),
                          value: check,
                          onChanged: ((val) {
                            setState(() {
                              check = val!;
                            });
                          })),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Navigator.pop(context, MaterialPageRoute(
                              builder: (context) {
                                return myapp();
                              },
                            ));
                          });
                        },
                        child: Text(
                          "Back to home screen",
                          style: TextStyle(
                              fontSize: 30,
                              backgroundColor:
                                  Color.fromARGB(255, 213, 187, 108)),
                        ))
                  ],
                ))),
      ),
    );
  }
}
