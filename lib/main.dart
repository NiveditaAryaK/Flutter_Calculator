import 'package:calc_13/buttons.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ); // MaterialApp
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
   var userQuestion='question';
   var userAnswer='answer';
  final List<String> buttons = [
    'C', 'DEL', '%', '/',
    '9', '8', '7', 'x',
    '6', '5', '4', '-',
    '3', '2', '1', '+',
    '0', '.', 'ANS', '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Column(
          children: <Widget>[
            Expanded(child: Container(
          child: SingleChildScrollView(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(height: 50,),
                  Container(
                      padding: EdgeInsets.all(40),
                      alignment: Alignment.centerLeft,
                      child: Text(userQuestion),style:TextStyle(fontSize: 20),),
                  Container(
                     padding: EdgeInsets.all(20),
                     alignment: Alignment.centerRight,
                      child: Text(userAnswer), style: TextStyle(fontSize: 20),),
                ]
              ),
          ),
            ),
            ),
            // Expanded(flex: 5,
                // child: Container(color: Colors.deepPurple[100],)),
            Expanded(child: Container(),
            ),
            Expanded(flex:4,
              child: Container(
                  child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                  itemBuilder: (BuildContext context, int index) {
                    if(index == 0){
                      return MyButton(
                      buttonText: buttons[index],
                    color: Colors.green,
                    textColor: Colors.white,
                      fontStyle: 25,);
                    }
                     else if(index == 1){
                       return MyButton(
                    buttonText: buttons[index],
                    color: Colors.red,
                    textColor:Colors.white,
                         fontStyle: 25,
                       );}
                     else{
                    return MyButton(
                      buttonText: buttons[index],
                      color: isOperator(buttons[index]) ? Colors.deepPurple:Colors.deepPurple[50],
                      textColor: isOperator(buttons[index]) ? Colors.white:Colors.deepPurple,
                      fontStyle: 25,
                    );
                    }
                  },
              ),
            ),
            ),
          ],
      ),
    );
  }
}
bool isOperator(String x){
  if(x=='%'||x=='/'||x=='x'||x=='-'||x=='+'||x=='=')
  {
    return true;
  }
  return false;
  }