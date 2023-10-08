import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({super.key});

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text(
            'Notes',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          actions: [
            Container(
              padding: EdgeInsets.all(5.0),
              margin: EdgeInsets.all(8.0),
              color: Colors.grey,
              child: Icon(
                Icons.sort,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  ///SEARCHBAR
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[700],
                        borderRadius: BorderRadius.circular(15.0)),
                    height: 35,
                    margin:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Icon(Icons.search, size: 20, color: Colors.white),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Search Items',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  ///CARDS CONTAINER
                  Container(
                      height: 800,
                      child: Column(
                        children: [
                          MyCard(Colors.green),
                          MyCard(Colors.blue),
                          MyCard(Colors.purpleAccent),
                          MyCard(Colors.orange),
                        ],
                      )),
                ]))));
  }

    Widget MyCard(Color ccolor){
      return Card(
          color: Colors.grey,
          margin: EdgeInsets.all(12.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius:
              BorderRadius.all(Radius.circular(15.0)),
              color: ccolor,
            ),
            height: 150,
            child:  Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                ///RECFIPES
                Column(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Recipes To Try',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      '    1) Dahi Samosa',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    Text(
                      '2) Raj Kachori',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    Text(
                      '         From Haldiram\'s Nagpur',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black),
                    ),
                  ],
                ),
                ///DELETE ICON
                InkWell(
                  onTap: (){
                    QuickAlert.show(
                      context: context,
                      type: QuickAlertType.confirm,
                      text: 'You Want To Delete',
                      confirmBtnText: 'Yes',
                      cancelBtnText: 'No',
                      onCancelBtnTap: (){
                        Navigator.pop(context);
                      },
                      onConfirmBtnTap: (){
                        final snackbar = SnackBar(content: Text('Deleted Sucessfully'),action: SnackBarAction(label: 'UNDO', onPressed: (){}),);
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        Navigator.pop(context);
                      }
                    );
                    AlertDialog(
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      icon: Icon(Icons.confirmation_number_rounded),
                    );
                  },
                  child:const Column(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            right: 30.0),
                        child: Icon(
                          Icons.delete,
                          size: 25,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
      );
    }
}
