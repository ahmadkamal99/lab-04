import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class screen_one extends StatefulWidget {
  const screen_one({super.key});

  @override
  State<screen_one> createState() => _screen_oneState();
}

class _screen_oneState extends State<screen_one> {
  String city = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2015/10/30/20/13/sunrise-1014712__340.jpg"))),
        child: Column(
          children: [
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
                      backgroundColor: Color.fromARGB(255, 213, 187, 108)),
                )),
            Container(
              padding: EdgeInsets.symmetric(vertical: 100),
              child: Text(
                "where you want to travel?",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    backgroundColor: Colors.white),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 164, 163, 163),
              child: RadioListTile(
                  secondary: Icon(Icons.location_city),
                  title: Text("Jordan"),
                  subtitle: Text("wadi rum "),
                  value: "jordan",
                  groupValue: city,
                  onChanged: ((val) {
                    setState(() {
                      city = val.toString();
                    });
                  })),
            ),
            Container(
              color: Color.fromARGB(255, 164, 163, 163),
              child: RadioListTile(
                  secondary: Icon(Icons.location_city),
                  title: Text("UAE"),
                  subtitle: Text("Dubai "),
                  value: "UAE",
                  groupValue: city,
                  onChanged: ((val) {
                    setState(() {
                      city = val.toString();
                    });
                  })),
            ),
            Container(
              color: Color.fromARGB(255, 164, 163, 163),
              child: RadioListTile(
                  secondary: Icon(Icons.location_city),
                  title: Text("Egypt"),
                  subtitle: Text("Sharm Elshaikh "),
                  value: "Egypt",
                  groupValue: city,
                  onChanged: ((val) {
                    setState(() {
                      city = val.toString();
                    });
                  })),
            )
          ],
        ),
      )),
    );
  }
}
