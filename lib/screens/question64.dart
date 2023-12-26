import 'package:flutter/material.dart';

class question64 extends StatelessWidget {
  const question64({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question64"),
      ),
      body: HOme(),
    );
  }
}

class HOme extends StatefulWidget {
  const HOme({super.key});

  @override
  State<HOme> createState() => _HOmeState();
}

class _HOmeState extends State<HOme> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showAlertDialog(context);

        },
        child: Text("Alert Dialog"),

      ),

    );
  }

  Future showAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(

          //icon: Icon(Icons.select_all),
          title: Text("Secet City",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              )),

          actions: [
            Radio(value: null, groupValue: null, onChanged: (value) {

            },

            ),Text("Surat"),

            Radio(value: null, groupValue: null, onChanged: (value) {

            },

            ),Text("Ahmedabad")
          ],
        );
      },);
  }

}
