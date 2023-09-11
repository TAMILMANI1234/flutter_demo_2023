import 'package:flutter/material.dart';
class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card and Grid"),
      ),
      body:Center(
        child: Container(
          width: 200,
          height: 200,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(20.0),
            ),
            color: Colors.red,
            elevation: 50,
            shadowColor: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Text("This is card Widgets"),
                ),
                ElevatedButton(onPressed: (){}, child: Text("ok"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
