import 'package:flutter/material.dart';
import "Screens/screen1.dart";
import 'Screens/screen2.dart';
import 'Screens/screen3.dart';
import 'Screens/screen4.dart';
import 'Screens/screen5.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,

      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        elevation: 500,
       // toolbarHeight: 500,
        foregroundColor: Colors.white,
        titleSpacing: 100,
       /* shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50)
          )
        ),*/
        actions: [
          IconButton(onPressed: (){
            print("setting is clicked");
          }, icon: Icon(Icons.notifications)),
          IconButton(onPressed: (){}, icon: Icon(Icons.account_box_rounded)),
          IconButton(onPressed: (){}, icon: Icon(Icons.settings)),

        ],



      ),
      body:const Center(
        child: Text("Hello world"),
      ),
      drawer:Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
                child:  Text(
                  "Drawer Menu",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    letterSpacing: 0.5
                  ),
                ),
              decoration: BoxDecoration(
                  color: Colors.blue
              ),



            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("Tab Bar Navigation"),
              onTap: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen1()));
              },
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text("Basic Widgets"),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen2()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Buttons"),
              onTap: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen3()));
              },
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("Forms"),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen4()));
              },
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("Card and Grid"),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen5()));
              },
            )
          ],
        ),
      ) ,
    );
  }
}
