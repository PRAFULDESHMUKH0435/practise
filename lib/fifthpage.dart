import 'dart:math';
import 'package:flutter/material.dart';

class FifthPage extends StatefulWidget {
  @override
  State<FifthPage> createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dicee',),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.search),onPressed: (){},),
          IconButton(icon: Icon(Icons.shopping_bag_outlined),onPressed: (){},),
        ],
      ),
      drawer: Drawer(),
      body: Center(
        child: Container(
          child: InkWell(
            onTap: (){
              Random random = new Random();
              int newindex = random.nextInt(6)+1;
              setState(() {
                index=newindex;
              });
            },
            child: Expanded(
              child: Container(
                margin: EdgeInsets.all(15.0),
                width: 150,
                height: 150,
                child: Image.asset('assets/Images/dice_$index.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
