// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numberA = 0;
  int numberB = 0;

  void increaseNumberTeamA() {
    setState(() {
      numberA++;
    });
  }

  void decreaseNumberTeamA() {
    setState(() {
      numberA--;
    });
  }

  void increaseNumberTeamB() {
    setState(() {
      numberB++;
    });
  }

  void decreaseNumberTeamB() {
    setState(() {
      numberB--;
    });
  }

  void resetNumber() {
    setState(() {
      numberA = 0;
      numberB = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score App"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  const Text(
                    'Team A',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    numberA.toString(),
                    style: TextStyle(
                      fontSize: 80,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  RaisedButton(
                    color: Colors.red,
                    child: const Text(
                      'Increase',
                    ),
                    onPressed: increaseNumberTeamA,
                  ),
                  SizedBox(height: 10),
                  RaisedButton(
                    color: Colors.red,
                    child: const Text(
                      'Decrease',
                    ),
                    onPressed: decreaseNumberTeamA,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  const Text(
                    'Team B',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    numberB.toString(),
                    style: TextStyle(
                      fontSize: 80,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    child: const Text(
                      'Increase',
                    ),
                    onPressed: increaseNumberTeamB,
                  ),
                  const SizedBox(height: 10),
                  RaisedButton(
                    color: Colors.blue,
                    child: const Text(
                      'Decrease',
                    ),
                    onPressed: decreaseNumberTeamB,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore_outlined),
        onPressed: resetNumber,
      ),
    );
  }
}
