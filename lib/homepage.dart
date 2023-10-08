import'package:flutter/material.dart';
import 'package:practise/secondpage.dart';
import 'package:quickalert/quickalert.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool ischecked = false;
  String selecteddate ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffFFFF00),
                Color(0xff800000),
                Color(0xffFFFF00),
              ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text('I AM MAINPAGE',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ElevatedButton(onPressed: (){
                QuickAlert.show(context: context,
                    type: QuickAlertType.confirm,
                    text:'You Want To Exit',
                    cancelBtnText: 'No',
                    onCancelBtnTap: (){
                    },
                    confirmBtnText:'Yes',
                    onConfirmBtnTap: (){

                    },
                );
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
              }, child: Text('Click Me')),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: CheckboxListTile(value: ischecked,
                  onChanged: (value){
                  setState(() {
                    ischecked =!ischecked;
                    print(ischecked);
                  });
                },
                  title: Text('Hi'),
                  subtitle: Text('Subtitle'),
                  checkColor: Colors.white,
                  tileColor: Colors.white,
                ),
              ),
              
              ElevatedButton(onPressed: (){
                showDatePicker(context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2030)
                ).then((value){
                  selecteddate=value.toString();
                  print("SELECTED DATE IS "+selecteddate);
                });
              }, child: Text('Open Calender')),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
              }, child: Text('Second')),

              ElevatedButton(onPressed: (){
                final snackbar = SnackBar(content: Row(children: [
                  Icon(Icons.home),
                  SizedBox(width: 80,),
                  Text('I AM SNACKBAR '),
                ],),action: SnackBarAction(
                  label: 'Undo',
                  onPressed: (){
                    print(' ITEM DELETED');
                  },
                ),);
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              }, child: Text('SnackBar')),
              
              ElevatedButton(onPressed: (){
                customtoast();
              }, child: Text('Custom Toast')),

            ]
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          print(index+1);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.contact_emergency),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        ],
      ),
    );
  }
  
  Widget customtoast(){
    return Row(
      children: [
        Icon(Icons.connected_tv_sharp),
        SizedBox(width: 80,),
        Text('I AM CUSTOM TOAST')
      ],
    );
  }
}
