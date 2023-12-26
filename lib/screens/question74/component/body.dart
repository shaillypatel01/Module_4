
import 'package:assignment_module4/screens/question74/component/slidview.dart';
import 'package:assignment_module4/screens/question74/component/thankyou.dart';
import 'package:assignment_module4/screens/question74/model/item.dart';
import 'package:flutter/material.dart';


import 'indicator.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  List<Item> itemList = [];
  final _pageController = PageController();
  int currentIndex = 0;

  @override
  void initState() {
    itemList.add(
      Item(
          title: 'Select Item',
          desc:
          'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          image: 'assets/images/onboarding.jpg'
      ),
    );
    itemList.add(
      Item(
          title: 'Purchase',
          desc:
          'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          image: 'assets/images/onboarding.jpg'
      ),
    );
    itemList.add(
      Item(
          title: 'Delivery',
          desc:
          'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.',
          image: 'assets/images/onboarding.jpg'
      ),
    );
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: itemList.length,
        controller: _pageController,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        itemBuilder: (context, index) {
          return SlidView(itemList[index]);
        },),
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(int i = 0; i<itemList.length; i++)
                  if (currentIndex == i)
                    getIndicator(true)
                  else
                    getIndicator(false)

              ],
            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ThanksScreen(),
                  ));

                }, child: Text("SKIP")),

                ElevatedButton(onPressed: () {
                  if (currentIndex != itemList.length - 1) {
                    _pageController.animateToPage(currentIndex + 1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.linear);
                  } else {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ThanksScreen(),));
                  }
                }, child: Text(
                  currentIndex == itemList.length-1 ? 'FINISH' : 'NEXT',
                  style: TextStyle(color: Colors.white, ),))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
