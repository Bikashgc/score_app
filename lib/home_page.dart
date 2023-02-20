// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score App"),
        centerTitle: true,
      ),
      body: Row(
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
                const Text(
                  '0',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                RaisedButton(
                  color: Colors.red,
                  child: const Text(
                    'increment',
                  ),
                  onPressed: () {},
                ),
                SizedBox(height: 10),
                RaisedButton(
                  color: Colors.red,
                  child: const Text(
                    'decrement',
                  ),
                  onPressed: () {},
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
                const Text(
                  '0',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                RaisedButton(
                  color: Colors.blue,
                  child: const Text(
                    'increment',
                  ),
                  onPressed: () {},
                ),
                const SizedBox(height: 10),
                RaisedButton(
                  color: Colors.blue,
                  child: const Text(
                    'decrement',
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore_outlined),
        onPressed: () {},
      ),
    );
  }
}
