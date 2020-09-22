import "package:flutter/material.dart";
import "package:belajar_flutter/halaman_dua.dart";
import "dart:math";

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> list = [];

  int alphaColor = 0;
  int redColor = 0;
  int greenColor = 0;
  int blueColor = 0;

  Color boxOneColor = Colors.red;
  Color boxTwoColor = Colors.blue;
  Color boxThreeColor = Colors.purple;
  Color targetColor = Colors.black12;

  void randomizeColor() {
    setState(() {
      alphaColor = Random().nextInt(256);
      redColor = Random().nextInt(256);
      greenColor = Random().nextInt(256);
      blueColor = Random().nextInt(256);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.access_alarm),
          Icon(Icons.access_alarm),
          Icon(Icons.access_alarm),
        ],
        leading: Icon(Icons.accessibility),
        title: Text("Belajar Flutter"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff0096ff), Color(0xff6610f2)],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
            ),
          ),
        ),
      ),
      body: ListView(children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HalamanDua();
                      },
                    ),
                  );
                },
                child: Text('Pindah ke halaman 2'),
              ),
              RaisedButton(
                onPressed: () {
                  randomizeColor();
                  setState(() {
                    list.add(Text(
                      "Data Ke-${list.length}",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ));
                  });
                },
                child: Text('Tambah'),
              ),
              RaisedButton(
                onPressed: () {
                  randomizeColor();
                  if (list.length > 0) setState(() => list.removeLast());
                },
                child: Text('Hapus'),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () => randomizeColor(),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "Ahmed Rayhan Primadedas",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                decoration: TextDecoration.lineThrough,
                decorationThickness: 2,
                decorationStyle: TextDecorationStyle.wavy,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Draggable<Color>(
                    data: boxOneColor,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: boxOneColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    childWhenDragging: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        shape: BoxShape.circle,
                      ),
                    ),
                    feedback: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: boxOneColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Draggable<Color>(
                    data: boxTwoColor,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: boxTwoColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    childWhenDragging: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        shape: BoxShape.circle,
                      ),
                    ),
                    feedback: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: boxTwoColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Draggable<Color>(
                    data: boxThreeColor,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: boxThreeColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    childWhenDragging: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        shape: BoxShape.circle,
                      ),
                    ),
                    feedback: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: boxThreeColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
              DragTarget<Color>(onAccept: (data) {
                targetColor = data;
              }, builder: (context, candidates, rejected) {
                return Container(
                  margin: EdgeInsets.only(top: 50),
                  height: 100,
                  color: targetColor,
                );
              }),
            ],
          ),
        ),
        AnimatedContainer(
          padding: EdgeInsets.symmetric(vertical: 30),
          duration: Duration(milliseconds: 400),
          color: Color.fromARGB(alphaColor, redColor, greenColor, blueColor),
          child: Column(
            children: list,
          ),
        ),
      ]),
    );
  }
}
