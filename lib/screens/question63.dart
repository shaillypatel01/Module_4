import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';



class question63 extends StatelessWidget {
  const question63({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
              child: ElevatedButton(
                child: Text("Alert Dialog",
                    style: TextStyle(
                      fontSize: 30,
                    )),
                onPressed: () async {
                  var result = await showAlertDialog(context);
                },
              )),
        ));
  }

  Future<dynamic> showAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(

 actionsAlignment: MainAxisAlignment.center,
          actionsPadding: EdgeInsets.all(10),

          backgroundColor: Color(0xFFBAE8E8),
          actions: [

            ElevatedButton(
              onPressed: () {

                Fluttertoast.showToast(
                    msg: "This is Positive Button",
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Color(0xFFD3E4CD),
                    textColor: Color(0xFF2B2A4C),
                    toastLength: Toast.LENGTH_SHORT,
                    fontSize: 20);

                Navigator.pop(context);
              },
              child: Icon(Icons.add
              ),

            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "This is Negative Button",
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Color(0xFFD3E4CD),
                    textColor: Color(0xFF2B2A4C),
                    toastLength: Toast.LENGTH_SHORT,
                    fontSize: 20);

                Navigator.pop(context);
              },
              child: Icon(Icons.remove),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "This is Neutral Button",
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Color(0xFFD3E4CD),
                    textColor: Color(0xFF2B2A4C),
                    toastLength: Toast.LENGTH_SHORT,
                    fontSize: 20);

                Navigator.pop(context);
              },
              child: Icon(Icons.exposure_zero),
            ),
          ],
        );
      },
    );
  }
}
