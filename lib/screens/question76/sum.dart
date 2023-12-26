
import 'package:flutter/material.dart';

class AnswerPage extends StatelessWidget {

  /* Num num;
  AnswerPage(this.num);*/

  var _totalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Answer Page",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
            )),
      ),
      body: Center(
        // result = int.parse(_num1Controller.text) + int.parse(_num2Controller.text);

        /* child: Text('''
        Number : ${num.num1}
        Num : ${num.num2}
        '''),*/
        child: TextFormField(
          controller: _totalController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              labelText: "Total",
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber),
                  borderRadius: BorderRadius.circular(20))),
        ),

      ),
    );
  }
}
