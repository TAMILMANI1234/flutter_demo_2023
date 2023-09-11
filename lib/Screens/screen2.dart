import 'package:flutter/material.dart';
class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen2"),
        backgroundColor: Colors.blue,
        
      ),
    /*  body: Container(
        child: const Text(
          "MY Container",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        padding: EdgeInsets.all(50),
        margin: EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(20)
        ),
      ),*/
     /* body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: Text("CONTAINER 1"),
            decoration: BoxDecoration(
              color: Colors.redAccent
            ),
          ),
          Container(
            child: Text("CONTAINER 2"),
            decoration: BoxDecoration(
                color: Colors.redAccent
            ),
          ),
          Container(
            child: Text("CONTAINER 3"),
            decoration: BoxDecoration(
                color: Colors.redAccent
            ),
          ),
          Container(
            child: Text("CONTAINER 4"),
            decoration: BoxDecoration(
                color: Colors.redAccent
            ),
          ) ,
          Container(
            child: Text("CONTAINER 5"),
            decoration: BoxDecoration(
                color: Colors.redAccent
            ),

          ),

        ],
      ),*/
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          children: [
            Container(
              child: Text("CONTAINER 1"),
              decoration: BoxDecoration(
                  color: Colors.green
              ),
              padding: EdgeInsets.all(20),
            ),
            Container(
              child: Text("CONTAINER 2"),
              decoration: BoxDecoration(
                  color: Colors.green
              ),
                padding: EdgeInsets.all(20)
            ),
            Container(
              child: Text("CONTAINER 3"),
              decoration: BoxDecoration(
                  color: Colors.green
              ),
              padding: EdgeInsets.all(20),
            ),
            Container(
              child: Text("CONTAINER 4"),
              decoration: BoxDecoration(
                  color: Colors.green
              ),
              padding: EdgeInsets.all(20),
            ),

          ],
        ),
      )


      
    );
  }
}
