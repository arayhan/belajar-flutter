import "package:flutter/material.dart";

class NyobaHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 200,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff0096ff), Color(0xff6610f2)],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Hero(
                      tag: 'photo-profile',
                      child: Center(
                        child: Container(
                          width: 60,
                          height: 60,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://i.pinimg.com/originals/0e/c6/6b/0ec66b439eb296c4f69cc261e44a785b.jpg",
                              ),
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Nyoba Hero",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.access_alarm,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.access_alarm,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.access_alarm,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
