import 'package:flutter/material.dart';
import 'package:simple_calculator/presentation/home_screen/widgets/global_button.dart';
import 'package:simple_calculator/utils/size/app_size.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return  Container(
      padding: EdgeInsets.only(left: 15.getW(),right: 15.getW(),top: 10.getH()),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GlobalButton(
                title: "AC",
                color: Colors.grey.withOpacity(0.35),
              ),
              GlobalButton(
                title: "X",
                color: Colors.grey.withOpacity(0.35),
              ),
              GlobalButton(
                title: "%",
                color: Colors.grey.withOpacity(0.35),
              ),
              GlobalButton(
                title: "*",
                color: Colors.grey.withOpacity(0.35),
              ),
            ],
          ),
          SizedBox(height: 5.getH()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GlobalButton(
                title: "7",
                color: Colors.grey.withOpacity(0.35),
              ),
              GlobalButton(
                title: "8",
                color: Colors.grey.withOpacity(0.35),
              ),
              GlobalButton(
                title: "9",
                color: Colors.grey.withOpacity(0.35),
              ),
              GlobalButton(
                title: "/",
                color: Colors.grey.withOpacity(0.35),
              ),
            ],
          ),
          SizedBox(height: 5.getH()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GlobalButton(
                title: "4",
                color: Colors.grey.withOpacity(0.35),
              ),
              GlobalButton(
                title: "5",
                color: Colors.grey.withOpacity(0.35),
              ),
              GlobalButton(
                title: "6",
                color: Colors.grey.withOpacity(0.35),
              ),
              GlobalButton(
                title: "-",
                color: Colors.grey.withOpacity(0.35),
              ),
            ],
          ),
          SizedBox(height: 5.getH()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GlobalButton(
                title: "1",
                color: Colors.grey.withOpacity(0.35),
              ),
              GlobalButton(
                title: "2",
                color: Colors.grey.withOpacity(0.35),
              ),
              GlobalButton(
                title: "3",
                color: Colors.grey.withOpacity(0.35),
              ),
              GlobalButton(
                title: "+",
                color: Colors.grey.withOpacity(0.35),
              ),
            ],
          ),
          SizedBox(height: 5.getH()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GlobalButton(
                title: "00",
                color: Colors.grey.withOpacity(0.35),
              ),
              GlobalButton(
                title: "0",
                color: Colors.grey.withOpacity(0.35),
              ),
              GlobalButton(
                title: ".",
                color: Colors.grey.withOpacity(0.35),
              ),
              GlobalButton(
                title: "=",
                color: Colors.blueAccent.withOpacity(0.35),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
