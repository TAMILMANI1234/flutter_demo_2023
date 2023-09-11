import "package:flutter/material.dart";
class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  showAlertBox(context,"ElevatedButton is clicked");
                },
                child: Text("Elevated Button"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow
                ),

            ),
            OutlinedButton(
                onPressed:(){
                  showAlertBox(context, "Outline Button is clicked");
                },
                child:Text("Outline Button"),
              style: OutlinedButton.styleFrom(
                primary: Colors.redAccent
              ),

            ),
            TextButton(
                onPressed:(){
                  showAlertBox(context, "Text Button is clicked");
                },
                child:Text("Text Button"),
              style: TextButton.styleFrom(
                  primary: Colors.green
              ),
            ),
            IconButton(
                onPressed:(){
                  showAlertBox(context, "Icon Button is clicked");
                },
                icon: Icon(Icons.add),
                iconSize:40 ,
              color: Colors.brown,
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit),
        onPressed: (){
          showAlertBox(context, "Floating Action Button is clicked");
        },
        backgroundColor: Colors.amber,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

}
showAlertBox(BuildContext context,String s){
  AlertDialog alertDialog =AlertDialog(
    title: Text("Alert Box"),
    content: Text(s),
    actions: [
      ElevatedButton(onPressed: (){
        Navigator.of(context).pop();
      }, child: Text("OK"))
    ],
  );
  showDialog(context: context, builder: (BuildContext context)
  {
    return alertDialog;
  });
}

