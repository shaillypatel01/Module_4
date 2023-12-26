import 'package:flutter/material.dart';

import '../model/item.dart';

class SlidView extends StatelessWidget {

  Item item;

  SlidView(this.item);

  @override


  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Shoppio",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),),
          SizedBox(
            height: 5,
          ),
          AspectRatio(aspectRatio:16/14,
            child: Image.asset(item.image),
          ),
          SizedBox(
            height: 10,
          ),
          Text(item.title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              item.desc,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade700,
              ),
            ),
          )
        ],
      ),
    );
  }
}
