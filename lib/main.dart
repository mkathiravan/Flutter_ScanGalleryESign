import 'package:flutter/material.dart';
import 'package:flutterqrpicalert/alertDialogView.dart';
import 'package:flutterqrpicalert/cameraView.dart';
import 'package:flutterqrpicalert/galleryView.dart';
import 'package:flutterqrpicalert/qrscan.dart';
import 'package:flutterqrpicalert/signApp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Media Player',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          elevation: 0,
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('Hello Flutter Master',
            style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                textBaseline: TextBaseline.alphabetic
            ),),
          onPressed: () {
            print("Pressed on a RaisedButton");
          },
        ),
      ),
    );
  }
}



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter UI"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(height: 30),
            MaterialButton(
              padding: EdgeInsets.all(12.0),
              minWidth: double.infinity,
              child: Text("Click QR Scan"),
              color: Colors.red,
              textColor: Colors.white,
              splashColor: Colors.grey,
              //padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),

              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return QRScan();
                }));
              },
            ),
            const SizedBox(height: 30),
            MaterialButton(
              padding: EdgeInsets.all(12.0),
              minWidth: double.infinity,
              child: Text("Click Image & Record"),
              color: Colors.red,
              textColor: Colors.white,
              splashColor: Colors.grey,
              //padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),

              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return CameraViewScreen();
                }));
              },
            ),

            const SizedBox(height: 30),
            MaterialButton(
              padding: EdgeInsets.all(12.0),
              minWidth: double.infinity,
              child: Text("Browse Gallery & Click Camera"),
              color: Colors.red,
              textColor: Colors.white,
              splashColor: Colors.grey,
              // padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),

              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return GalleryCameraScreen();
                }));
              },
            ),

            const SizedBox(height: 30),
            MaterialButton(
              padding: EdgeInsets.all(12.0),
              minWidth: double.infinity,
              child: Text("E-Signature"),
              color: Colors.red,
              textColor: Colors.white,
              splashColor: Colors.grey,
              // padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),

              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return SignApp();
                }));
              },
            ),


            const SizedBox(height: 30),
            MaterialButton(
              padding: EdgeInsets.all(12.0),
              minWidth: double.infinity,
              child: Text("Alert Dialog"),
              color: Colors.red,
              textColor: Colors.white,
              splashColor: Colors.grey,
              // padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),

              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return AlertDialogView();
                }));
              },
            ),

          ],
        ),
      ),
    );
  }

}

