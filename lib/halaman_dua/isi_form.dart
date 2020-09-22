import 'package:flutter/material.dart';

class IsiForm extends StatefulWidget {
  @override
  _IsiFormState createState() => _IsiFormState();
}

class _IsiFormState extends State<IsiForm> {
  TextEditingController username = TextEditingController(text: "arayhan_");
  TextEditingController password = TextEditingController(text: "123qwe");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Isi Form'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: (Column(
              children: [
                TextField(
                  controller: username,
                  onChanged: (value) => setState(() {}),
                ),
                TextField(
                  obscureText: true,
                  controller: password,
                  onChanged: (value) => setState(() {}),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width,
                  child: Material(
                    elevation: 3,
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(50),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(50),
                      splashColor: Colors.green[200],
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          children: [
                            Text("Username : ${username.text}"),
                            Text("Password : ${password.text}")
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )),
          ),
        ],
      ),
    );
  }
}
