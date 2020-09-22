import "package:flutter/material.dart";
import "package:belajar_flutter/halaman_dua/isi_form.dart";
import "package:belajar_flutter/halaman_dua/nyoba_hero.dart";

class HalamanDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Flutter"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Hero(
              tag: 'photo-profile',
              child: Center(
                child: Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(bottom: 15),
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
            buildCard(
                context: context,
                text: "Isi Form",
                route: IsiForm(),
                icon: Icons.airplanemode_active),
            buildCard(
                context: context,
                text: "Nyoba Hero",
                route: NyobaHero(),
                icon: Icons.account_box),
          ],
        ),
      ),
    );
  }

  GestureDetector buildCard({context, text, icon, route}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => route,
          ),
        );
      },
      child: Card(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(icon),
              SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
