import 'package:flutter/material.dart';

void main() => runApp(const WidgetSansEtat());

class WidgetSansEtat extends StatelessWidget{
  const WidgetSansEtat({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        appBar: AppBar(
          //leading: const Icon(Icons.menu),
          backgroundColor: Colors.green,
          title: const Text(
            "Test AppBar",
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
        body: const Center(
          child: WidgetAvecEtat(),
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              const DrawerHeader(
                decoration:  BoxDecoration(
                  color: Colors.greenAccent
                ),
                child: UserAccountsDrawerHeader(
                    accountName:  Text("Mon nom"),
                    accountEmail:  Text("abe@xyz.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.black,
                      child:  Text("MN"),
                    ),
                    currentAccountPictureSize: Size.square(40)
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Profile"),
                onTap: (){

                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.bike_scooter),
                title: const Text("Mes courses"),
                onTap: (){
                  Navigator.pop(context);
                },
              ),

            ],
          ),
        ),
        /*body: const Center(
          child: Text(
            "Widget Sans Etat",
            style: TextStyle(color: Colors.blue, fontSize: 30),
          ),
        ),*/
        /*body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 50,vertical: 15),
          width: 100,
          height: 100,
          transform: Matrix4.rotationZ(0.1),
          decoration: BoxDecoration(
            color: Colors.blue,
            border:  Border.all(color: Colors.red, width: 2, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.5),
                offset: const Offset(4, 4)
              )
            ]
          ),
          child: const Text("Je suis dans un conteneur!"),
        ),*/


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
  bool _isLoading = false;

  void _handleButton(){
    setState(() {
      _isLoading = true;
    });

    Future.delayed(const Duration(seconds: 2), (){
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: _isLoading ? null : _handleButton,

        child: _isLoading ? const CircularProgressIndicator(color: Colors.white) : const Text("Cliquez-moi")
    );
  }

  /*@override
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
  }*/

}

