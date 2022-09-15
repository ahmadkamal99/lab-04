import 'package:flutter/material.dart';
import 'package:myapp/screen_one.dart';
import 'package:myapp/screen_two.dart';

void main() {
  runApp(MaterialApp(
    home: myapp(),
  ));
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return home();
  }
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
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
                    "https://cdn.pixabay.com/photo/2017/05/20/20/22/clouds-2329680__340.jpg"))),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(30), right: Radius.circular(30))),
              child: Container(
                color: Color.fromARGB(255, 174, 171, 162),
                child: Text(
                  "Welcome to our travel app",
                  style: TextStyle(fontSize: 70),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(60),
            ),
            ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return screen_one();
                      },
                    ));
                  });
                },
                icon: Icon(Icons.heart_broken),
                label: Text(
                  "your prefrence page",
                  style: TextStyle(fontSize: 25),
                )),
            Container(
              padding: EdgeInsets.all(20),
            ),
            ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return screen_two();
                      },
                    ));
                  });
                },
                icon: Icon(Icons.heart_broken),
                label: Text(
                  "Fill your information",
                  style: TextStyle(fontSize: 25),
                )),
          ],
        ),
      )),
    );
  }
}
