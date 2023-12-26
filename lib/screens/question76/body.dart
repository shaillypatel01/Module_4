
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  var _num1Controller = TextEditingController();
  var _num2Controller = TextEditingController();
  var _totalController = TextEditingController();
  late int sum;
  late int result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _num1Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Enter Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: _num2Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Enter Number",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber),
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 30,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Expanded(child: ElevatedButton(
                      onPressed: () {

                        int _num1 = int.parse(_num1Controller.text.trim());
                        int _num2 = int.parse(_num2Controller.text.trim());

                        //Num num = Num(num1: _num1, num2: _num2);

                        // Navigator.push(context, MaterialPageRoute(builder: (context) => AnswerPage(), ));

                        /* print("Number 1 = $_num1");
                        print("Number 2 = $_num2");*/

                        setState(() {
                          sum = int.parse(_num1Controller.text) + int.parse(_num2Controller.text);
                          result = sum;
                          _totalController.text = result.toString();
                          //print("Sum of ${_num1} + ${_num2} = $result");
                        });


                      }, child: Text("Sum",
                    style: TextStyle(
                        fontSize: 30
                    ),)
                  ))

                ],

              ),
              SizedBox(
                height: 45,
              ),
              TextFormField(
                controller: _totalController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Total",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber),
                        borderRadius: BorderRadius.circular(20))),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
