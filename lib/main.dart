// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  const ScoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Score changer App",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({Key? key}) : super(key: key);

  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int num = 0;
  void increaseNumber() {
    setState(() {
      num++;
    });
  }

  void decrease() {
    setState(() {
      num--;
    });
  }

  void reset() {
    setState(() {
      num = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Score changer  App'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.restore_outlined),
        onPressed: reset,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Center(
            child: Text(
              'your Score is ',
              style: TextStyle(
                  fontSize: 30, color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
          
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              num.toString(),
              style: const TextStyle(
                  fontSize: 150, color: Colors.red, fontWeight: FontWeight.bold),
            ),
            
            

          ),
          const SizedBox(height: 100,),
         
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                color: Colors.blue,
                child: const Text('increase'),
                onPressed: increaseNumber,
              ),
              const SizedBox(
                width: 30,
              ),
              RaisedButton(
                color: Colors.red,
                child: const Text('decrease'),
                onPressed: decrease,
              ),
              
            ],
          ),
           const SizedBox(
                height: 140,
              ),
           TextButton(
                onPressed: () {},
                child: const Text('Developed by Prabesh Tamang'),
                  ),
        ],
        
      ),
    
    );
  }
}
