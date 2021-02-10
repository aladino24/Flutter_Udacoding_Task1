import 'dart:io';
import 'package:flutter_task1/halaman3.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
        color: Colors.black,
        ),
        backgroundColor: Colors.yellow[800],
        title: Text("Create a Post",
        style: TextStyle(
          color: Colors.black
        ),
        textAlign: TextAlign.center,
        ),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
                Navigator.pop(context);
              },
        ),
      ),
      body:  SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.fromLTRB(35.0,10.0,35.0,20.0),
            
                child: Center(
                  child: Column(
                      children: <Widget>[
                         SizedBox(height: 40),
                      TextFormField(
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black
                          ),
                          decoration: InputDecoration(
                          enabledBorder:OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black, width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                          ),
                          hintText: "Title",
                          hintStyle: TextStyle(
                            fontSize: 18,
                            color : Colors.black38
                          ),
                          border : OutlineInputBorder(),
                        ),
                      ), 
                      SizedBox(height: 24),
                      Container(
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 2.0
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 2.0
                              ),
                            ),
                            hintText: "Description",
                            hintStyle: TextStyle(
                              color: Colors.black38
                            ),
                          ),
                          keyboardType: TextInputType.multiline,
                          maxLines: 25,
                          minLines: 20,
                        ),
                      ), 
                      SizedBox(height:24),
                      SizedBox(
                        width: 318,
                        height: 55,
                        child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                        ),
                        color: Colors.yellow[800],
                        child: Text("Publish",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white
                          ),
                        ),
                         onPressed: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ThirdPage())
                          );
                         },
                        ),
                      ),      
                    ]
                  ),
                ),
            ),
          )
    );
  }
}