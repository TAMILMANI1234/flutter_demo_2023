import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  //TextEditingController name =TextEditingController();
  //TextEditingController age =TextEditingController();

  final _formkey = GlobalKey<FormState>();
  String name="";
  String age="";
  String roll="";
  String gender="Male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forms"),
        backgroundColor: Colors.blue,
      ),
    /*  body: Column(
        children: [
          Center(
            child: Text("TextField"),
          ),
          Padding(
              padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextField(
                  controller: name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                    hintText: "Enter Name",
                    labelText:"Name"
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: age,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                    hintText: "Age",
                    labelText: "Age"
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: (){
                     if(name.text=="" || age.text==""){
                        showDialog(context: context, builder: (BuildContext context){
                          return Center(
                            child: Column(
                              children: [
                                Text("Enter required Value"),
                                ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: Text("ok"))
                              ],
                            ),
                          );
                        });
                     }
                  },
                  child: Text("Save"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,

                  ),

                )
              ],
            ),
          )
        ],
      )*/

      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Name",
                        labelText: "Name",
                        border: OutlineInputBorder()
                      ),
                      validator: (value){
                        if(value==null || value.isEmpty){
                          return "Enter Name";
                        }
                        return null;
                      },
                      onChanged: (val){
                        setState(() {
                          name=val;

                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Age",
                          labelText: "Age",
                          border: OutlineInputBorder()
                      ),
                      validator: (value){
                        if(value==null || value.isEmpty){
                          return "Enter age";
                        }
                        return null;
                      },
                      onChanged: (val){
                        setState(() {

                          age=val;
                        });
                      },
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Roll no",
                          labelText: "Roll number",
                          border: OutlineInputBorder()
                      ),
                      validator: (value){
                        if(value==null || value.isEmpty){
                          return "Enter Roll no";
                        }
                        return null;
                      },
                      onChanged: (val){
                        roll=val;
                      },
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Radio<String>(
                              value: "Male",
                              groupValue:gender ,
                              onChanged: (value){
                                setState(() {
                                  gender="male";
                                });
                              },
                            ),
                            title: Text("Male"),
                          ),
                          ListTile(
                            leading: Radio<String>(
                              value: "Female",
                              groupValue:gender ,
                              onChanged: (value){
                                setState(() {
                                  gender="Female";
                                });
                              },
                            ),
                            title: Text("Female"),
                          )
                        ],
                      ),
                    ),
                    ElevatedButton(
                        onPressed: (){
                            print(name);
                            print(age);
                            print(roll);
                            print(gender);
                            
                        },
                        child: Text("Save"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green
                      ),
                    ),

                  ],

                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
