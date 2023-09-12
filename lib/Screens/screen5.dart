import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:table_calendar/table_calendar.dart';
class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {

  /*void showToast(){
    Fluttertoast.showToast(
        msg:"Message from toast",
        fontSize: 20.0,
        textColor: Colors.red,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2
    );
  }*/
  double value =0;

  DateTime current=DateTime.now();

  @override
  void initState(){
    super.initState();
    value=0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card and Grid"),
        backgroundColor: Colors.blue,
      ),
     /* body:Center(
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
                ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: Text("ok"))
              ],
            ),
          ),
        ),
      ),*/
    /*  body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.count(
            crossAxisCount: 4,
           crossAxisSpacing: 40.0,
           mainAxisSpacing: 40.0,
          children: [
            Container(
              width: 50,
              height: 50,
              child: Text("Grid 1"),
              color: Colors.green,
            ),
            Container(
              width: 50,
              height: 50,
              child: Text("Grid 1"),
              color: Colors.green,
            ),
            Container(
              width: 50,
              height: 50,
              child: Text("Grid 1"),
              color: Colors.green,
            ),
            Container(
              width: 50,
              height: 50,
              child: Text("Grid 1"),
              color: Colors.green,
            ),
            Container(
              width: 50,
              height: 50,
              child: Text("Grid 1"),
              color: Colors.green,
            ),
            Container(
              width: 50,
              height: 50,
              child: Text("Grid 1"),
              color: Colors.green,
            )
          ],
        ),
      ),*/
     /* body: Center(
        child: ElevatedButton(
          onPressed: showToast ,
          child: Text("Click to Toaster message"),
        ),
      ),*/

    /*body: Column(
      children: [
        Text("Calender"),
        Container(
          child: TableCalendar(
            focusedDay: current,
            firstDay: DateTime.utc(2010,1,1),
            lastDay: DateTime.utc(2030,12,30),
          ),
        )
      ],
    ),*/
     /* body: Center(
        child: Column(
          children: [
            DataTable(
                columns: [
                  DataColumn(label:Text("S.no",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),)),
                  DataColumn(label:Text("Name",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                  ))),
                  DataColumn(label:Text("Age",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ))),
                ],
                rows: [
                  DataRow(
                      cells: [
                        DataCell(Text("1")),
                        DataCell(Text("Tamil")),
                        DataCell(Text("24")),
                      ]
                  ),
                  DataRow(
                      cells: [
                        DataCell(Text("2")),
                        DataCell(Text("Harris")),
                        DataCell(Text("24")),
                      ]
                  ),
                  DataRow(
                      cells: [
                        DataCell(Text("3")),
                        DataCell(Text("Lenin")),
                        DataCell(Text("24")),
                      ]
                  ),
                  DataRow(
                      cells: [
                        DataCell(Text("4")),
                        DataCell(Text("vicky")),
                        DataCell(Text("24")),
                      ]
                  )
                ]
            )
          ],
        ),
      ),*/
      /*body: Column(
        children: [
            myslider(),
            Container(
              child: Transform.rotate(
                  angle: value,
                 child: Container(
                   height: 100,
                   width: 100,
                   decoration: BoxDecoration(
                     color: Colors.green,

                   ),
                 ),
              ),
            )
        ],
      ),*/

     /* body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              backgroundColor: Colors.blue,
              valueColor: AlwaysStoppedAnimation(Colors.red),
              strokeWidth: 5,

            ),
            SizedBox(
              height: 20,
            ),
            LinearProgressIndicator(
              backgroundColor: Colors.green,
              valueColor: AlwaysStoppedAnimation(Colors.red),
              minHeight: 10,
            )
          ],
        ),
      ),*/

      body: Center(
        child: ElevatedButton(
          onPressed: (){
            final snackbar =SnackBar(
                content: Text("Message from snackbar"),
              backgroundColor: Colors.red,
              action: SnackBarAction(
                label: "dismiss",
                onPressed: (){},
              ),

            );
            ScaffoldMessenger.of(context).showSnackBar(snackbar);

          },
          child: Text("Click to display snack bar"),
        ),
      ),
    );
  }
  Slider myslider(){
    return Slider(
        value: value,
        min: 0,
        max: 100,
        onChanged: (val){
          print(val);
          setState(() {
            value=val;
          });
        }
    );
  }

}
