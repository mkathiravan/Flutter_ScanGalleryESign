
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home: AlertDialogView(),
        debugShowCheckedModeBanner: false,
      )
  );
}

class AlertDialogView extends StatelessWidget {

  createAlertDialog(BuildContext context)
  {

    TextEditingController customController = TextEditingController();

    return showDialog(context: context,builder: (context){
      return AlertDialog(
        title: Text("Enter your name"),
        content: TextField(
          controller: customController,
        ),
        actions: <Widget>[
          MaterialButton(
            elevation: 5.0,
            child: Text('Submit'),
            onPressed: (){
              Navigator.of(context).pop();
            },
          )
        ],
      );

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert Dialog'),),
      body: Builder(builder: (context){
        return Container(
          child: Center(
            child: FlatButton(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)
                ),
                color: Colors.deepOrange,
                textColor: Colors.white,
                onPressed: (){
                  createAlertDialog(context);
                },
                child: Text('Alert',style: TextStyle(fontSize: 20.0),)),
          ),
        );
      }),
    );
  }
}

