

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class secondpage extends StatefulWidget {
  @override
  _secondpageState createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  var _info = " ";

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;



    return Scaffold(
      appBar: AppBar(
        title: Text("EMI CALCULATOR",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.greenAccent,

        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: media.height / 22),
          child: Column(
            children: <Widget>[


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("EMI CALCULATOR", style: TextStyle(color: Colors.black87,
                      fontSize: 40,
                      fontWeight: FontWeight.bold)
                  )

                ],

              ),


              Row(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(),
                      child: Icon(
                        Icons.home, size: 80, color: Colors.deepOrangeAccent,)),

                  Padding(
                      padding: EdgeInsets.only(left: 90, right: 10),
                      child: Icon(
                        Icons.directions_car, size: 80, color: Colors.grey,)),
                  Padding(
                      padding: EdgeInsets.only(left: 70),
                      child: Icon(
                        Icons.local_hospital, size: 80, color: Colors.red,))

                ],

              ),
              Container(
                padding: EdgeInsets.only(top: media.height / 20,
                    right: media.width / 16,
                    left: media.width / 16),
                child: TextField(
                  controller: _firstCtrl,
                  style: TextStyle(fontSize: 30),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "ENTER THE AMOUNT",
                    hintText: "enter the amount in RS",
                    hintStyle: TextStyle(fontSize: 20),
                    // keyboardType:(TextInputType.text),
                    // autofocus:true,
                    //  autocorrect:true,
                  ),
                  keyboardType: TextInputType.text,
                  autofocus: true,
                  autocorrect: true,

                ),
              ),
              Container(
                padding: EdgeInsets.only(top: media.height / 20,
                    right: media.width / 16,
                    left: media.width / 16),
                child: TextField(
                  controller: _secondCtrl,
                  style: TextStyle(fontSize: 30),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "DURATION",
                    hintText: "enter the DURATION in MONTHS",
                    hintStyle: TextStyle(fontSize: 20),
                  ),
                  keyboardType: TextInputType.text,
                  autofocus: true,
                  autocorrect: true,

                ),
              ),
              Container(
                padding: EdgeInsets.only(top: media.height / 20,
                    right: media.width / 16,
                    left: media.width / 16),
                child: TextField(
                  controller: _thirdCtrl,
                  style: TextStyle(fontSize: 30),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "INTREST",
                    hintText: "rate of intrest",
                    hintStyle: TextStyle(fontSize: 20),
                  ),
                  keyboardType: TextInputType.text,
                  autofocus: true,
                  autocorrect: true,

                ),

              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: MaterialButton(
                  elevation: 7,
                  color: Colors.greenAccent,
                  onPressed: () {
                    _getEmi();
                  },
                  child: Text("CALCULATE EMI", style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                  ),
                ),

              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  _info,
                   style:TextStyle(fontSize: 30,fontWeight:FontWeight.bold)

                ),

              )
            ],
          ),


        ),
      ),


    );
  }

  TextEditingController _firstCtrl = TextEditingController();
  TextEditingController _secondCtrl = TextEditingController();
  TextEditingController _thirdCtrl = TextEditingController();

  void _getEmi() {
      var amount   = _firstCtrl.text;
    var duration = _secondCtrl.text;
    var  intrest = _thirdCtrl.text;
      int a=int.parse(amount);
      int b =int.parse(duration);
      int c=int.parse(intrest);
      var x =(a/b);
   var y= (c/100)*a;
    var z= y/b;
    var emi= x+z;
    setState(() {
      _info = ("Your EMI IS $emi" );
    });

      print( _info);




  }

}