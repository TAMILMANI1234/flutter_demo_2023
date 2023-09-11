import 'package:flutter/material.dart';
class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Whatsapp"),
            backgroundColor: Colors.green,
            bottom: TabBar(
              tabs: [
                Tab(text: "Chats"),
                Tab(text: "Status"),
                Tab(text: "Calls"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("Chats screen"),
              ),
              Center(
                child: Text("Status screen"),
              ),
              Center(
                child: Text("Calls screen"),
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            child: Icon(Icons.message),
            backgroundColor: Colors.green,
          ),
        )
    );
  }
}
