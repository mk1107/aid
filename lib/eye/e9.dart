import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'e10.dart';
import 'package:aid/third_page.dart';
import 'e1.dart';

class e9 extends StatefulWidget {
  @override
  _e9State createState() => _e9State();
}

class _e9State extends State<e9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Padding(padding: EdgeInsets.all(10.0),),
              Text(
                '9 of 10',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              new Padding(padding: EdgeInsets.all(30.0),),
              Text(
                'B  Y  T  P  P  S',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),

              new Padding(padding: EdgeInsets.all(15.0),
                child: Text(
                  "Are you able to see, what's written",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    // backgroundColor: lc,
                  ),
                  textAlign: TextAlign.center,
                ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    onPressed: (){
                      Alert(
                        context: context,
                        type: AlertType.error,
                        title: "Your result : 8/10",
                        desc: "You seem to have problem with see details at certain distances.Visit an eye doc for accurate test",
                        buttons: [
                          DialogButton(
                            child: Text(
                              "Try Again",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) =>e1()));
                            },
                            width: 120,
                          ),
                          DialogButton(
                            child: Text(
                              "Home",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) =>third_page()));
                            },
                            width: 120,
                          )
                        ],
                      ).show();
                    },
                    color: Colors.redAccent[200],
                    child: const Text(
                      " NO ",
                      style: TextStyle(fontSize: 20,color: Colors.yellow),
                    ),
                  ),
                  RaisedButton(
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) =>e10()));
                    },
                    color: Colors.greenAccent,
                    child: const Text(
                      '  YES  ',
                      style: TextStyle(fontSize: 20,color: Colors.green),
                    ),
                  ),
                ],
              ),
              //new Padding(padding: EdgeInsets.all(5.0),),
            ],
          ),
        ),
      ),
    );
  }
}
