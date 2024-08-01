import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home :MyHomePage()
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title :Text("Home Screen - 1st Screen")
      ),
      body : Center(
        child: ElevatedButton(
            onPressed : (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(data : "Hello From HomeScreen"),));},
          child: Text("Go to Second Screen"),
        ),
      )
    );
  }
}


class SecondScreen extends StatelessWidget {

  final String data ;
  const SecondScreen({ required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar : AppBar(
        title :Text("Second Screen")
      ),
      body : Column(
        mainAxisAlignment :  MainAxisAlignment.center ,
        crossAxisAlignment : CrossAxisAlignment.center ,
        children: [
           Center(
             child: ElevatedButton(
                 onPressed : (){
                     Navigator.pop(context);
                 },
               child: Text(data),
             ),
           )
        ],
      ) 
    );
  }
}
