import 'package:flutter/material.dart';

void main() => runApp(const WidgetAvecEtat());

class WidgetSansEtat extends StatelessWidget{
  const WidgetSansEtat({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          backgroundColor: Colors.green,
          title: const Text(
            "Test AppBar",
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
        body: const Center(
          child: Text(
            "Widget Sans Etat",
            style: TextStyle(color: Colors.blue, fontSize: 30),
          ),
        ),

      ),
    );
  }
  
}

class WidgetAvecEtat extends StatefulWidget{
  const WidgetAvecEtat({super.key});

  @override
  MyState createState(){
    return MyState();
  }


}

class MyState extends State<WidgetAvecEtat>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          backgroundColor: Colors.green,
          title: const Text(
            "Test AppBar",
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
        body: const Center(
          child: Text(
            "Widget Avec Etat",
            style: TextStyle(color: Colors.blue, fontSize: 30),
          ),
        ),

      ),
    );
  }

}

