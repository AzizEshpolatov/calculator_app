import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_calculator/presentation/home_screen/home_screen.dart';
import 'package:simple_calculator/utils/size/app_size.dart';
import 'package:simple_calculator/view_model/calculator_value.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CalculatorValue>(
      create: (context) => CalculatorValue(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    String displayValue = Provider.of<CalculatorValue>(context).numberString;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Calculator",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey.shade300,
            height: MediaQuery.of(context).size.height / 3,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: FractionalOffset.bottomRight,
                child: Text(
                  displayValue,
                  style: const TextStyle(fontSize: 40.0),
                ),
              ),
            ),
          ),
          Container(
            height: 2.getH(),
            width: width,
            color: Colors.grey.withOpacity(.5),
          ),
          const HomeScreen(),
          SizedBox(height: 30.getH()),
        ],
      ),
    );
  }
}
