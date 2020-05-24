import 'package:flutter/material.dart';

class firstpage extends StatefulWidget {
  @override
  _firstpageState createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  String _output= "0";
  double num1 =0.0;
  double num2 =0.0;
  String operation ="";

  buttonPressed(String textButton){
    if(textButton =="C"){
       _output= "0";
       num1 =0.0;
       num2 =0.0;
       operation ="";
    }
    else if(textButton=="+"||textButton=="-"||textButton=="/"||textButton=="x"){
      num1 = double.parse(output);
      operation =textButton;
      _output="0";
    }else if( textButton=="="){
      num2=double.parse(output);
      if(operation =="+"){
        _output= ((num1)+(num2)).toString();
      }if(operation =="-"){
        _output= ((num1)-(num2)).toString();
      }if(operation =="x"){
        _output= ((num1)*(num2)).toString();
      }if(operation =="/"){
        _output= ((num1)/(num2)).toString();
      }
      num1=0;
      num2=0;
      operation="";

    }else {
      _output = _output + textButton;
    }


 setState(() {
   output=double.parse(_output).toStringAsFixed(2);
 });


    print(_output);

  }
  String output ="0";
  Widget buildButton( String textButton){
   return  Padding(
     padding: const EdgeInsets.all(6.0),
     child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,

        children: <Widget>[
          MaterialButton(
              elevation:7,
              onPressed: (){
                buttonPressed(textButton);

              },

              child:Text(textButton,style: TextStyle(fontSize: 55,fontWeight: FontWeight.normal,color: Colors.black87),)
          ),
        ],

      ),
   );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("CALCULATOR",style:TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white)),
        backgroundColor: Colors.green,
       // leading:icon(Icons.exposure),
          centerTitle: true,
      ),
        body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[

               // padding: const EdgeInsets.only(top:50.0),
               //alignment:Alignment.centerRight,
             // padding: EdgeInsets.symmetric(vertical: 50 ,horizontal: 20),
                 Padding(
                   padding: const EdgeInsets.only(bottom:0.0),
                   child: Container(
                     padding: EdgeInsets.symmetric(vertical: 50 ,horizontal: 20),
                     alignment:Alignment.centerRight,
                     child:Text(
                       output,style: TextStyle(fontSize:55,fontWeight: FontWeight.bold,color: Colors.black),
                     ),

                   ),
                 ),



                 Container(
                  padding: EdgeInsets.only(top:40),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[



                             buildButton("C"),
                             buildButton("/"),
                             buildButton("x"),
                             buildButton("<-"),
                          
                           

                        ],
                      ),
                      Container(
                        child:Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                buildButton("1"),
                                buildButton("2"),
                                buildButton("3"),
                                buildButton("-"),


                              ],

                            ),
                            Container(
                              child:Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      buildButton("4"),
                                      buildButton("5"),
                                      buildButton("6"),
                                      buildButton("+"),

                                    ],


                                  ),
                                  Container(
                                    child:Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(top:.0),
                                          child: Row(
                                            children: <Widget>[
                                              buildButton("7"),
                                              buildButton("8"),
                                              buildButton("9"),
                                              buildButton("="),

                                            ],


                                          ),
                                        ),
                                        Container(
                                          child:Column(
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(top:.0),
                                                child: Row(
                                                  children: <Widget>[
                                                    buildButton("%"),
                                                    buildButton("0"),
                                                    buildButton("."),
                                                    buildButton("00"),

                                                  ],


                                                ),
                                              ),
                                            ],
                                          ) ,
                                        )
                                      ],
                                    ) ,
                                  )
                                ],
                              ) ,
                            )
                          ],
                        ) ,
                      )
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
