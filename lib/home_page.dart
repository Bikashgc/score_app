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
        title: const Text("Score App"),
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
                  const TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.purple,
                          width: 2.0,
                        ),
                      ),
                      hintText: 'Enter Team A name',
                      hintStyle: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                    minLines: 1,
                    maxLines: 3,
                  ),
                  Text(
                    numberA.toString(),
                    style: const TextStyle(
                      fontSize: 120,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  RaisedButton(
                    color: Colors.red,
                    onPressed: increaseNumberTeamA,
                    child: const Text(
                      'Increase',
                    ),
                  ),
                  const SizedBox(height: 10),
                  RaisedButton(
                    color: Colors.red,
                    onPressed: decreaseNumberTeamA,
                    child: const Text(
                      'Decrease',
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  const TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.purple,
                          width: 2.0,
                        ),
                      ),
                      hintText: 'Enter Team B name',
                      hintStyle: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                    minLines: 1,
                    maxLines: 3,
                  ),
                  Text(
                    numberB.toString(),
                    style: const TextStyle(
                      fontSize: 120,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    onPressed: increaseNumberTeamB,
                    child: const Text(
                      'Increase',
                    ),
                  ),
                  const SizedBox(height: 10),
                  RaisedButton(
                    color: Colors.blue,
                    onPressed: decreaseNumberTeamB,
                    child: const Text(
                      'Decrease',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: resetNumber,
        child: const Icon(Icons.restore_outlined),
      ),
    );
  }
}
