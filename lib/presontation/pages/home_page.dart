

import 'package:flutter/material.dart';
import 'package:unittest/controller/parenumbers_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final ParePremierNambersController parePremierNambersController = ParePremierNambersController();



  @override
  void initState() {
    super.initState();
    List<int> theResults = parePremierNambersController.allprimeNumbersInNumber(10);

    print(theResults);

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test App"),
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView(
        children: const [
          
        ],
      ),
    );
  }
}