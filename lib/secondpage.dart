import 'package:flutter/material.dart';
class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
              ),
              Text('Praful Deshmukh',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'titlefont'),),
              Text('Flutter Developer',style: TextStyle(fontSize: 20,color: Colors.white,fontFamily: 'namefont',letterSpacing: 2),),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25.0,vertical: 10.0),
                height: 50,
                width: double.infinity,
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Icon(Icons.person,size: 25,color: Colors.teal,),
                    SizedBox(width: 50,),
                    Text('Praful Deshmukh',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25.0,vertical: 10.0),
                height: 50,
                width: double.infinity,
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Icon(Icons.phone,size: 25,color: Colors.teal,),
                    SizedBox(width: 50,),
                    Text('+919359407730',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25.0,vertical: 10.0),
                height: 50,
                width: double.infinity,
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Icon(Icons.message,size: 25,color: Colors.teal,),
                    SizedBox(width: 50,),
                    Flexible(child: Text('prafuldeshmukh068@gmail.com',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
