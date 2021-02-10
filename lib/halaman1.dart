import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_task1/halaman2.dart';
import 'package:url_launcher/url_launcher.dart';


class FirstPage extends StatelessWidget {
  final TapGestureRecognizer _gestureRecognizer =TapGestureRecognizer()..onTap=(){
    debugPrint("Hello World");
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First Page',
      home: Scaffold(
        backgroundColor: Colors.yellow[800],
          body:  SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.fromLTRB(35.0,10.0,35.0,20.0),
            
                child: Center(
                  child: Column(
                      children: <Widget>[
                          SizedBox(height: 45),
                        Text(
                          'Blogging',
                          style: TextStyle(
                            fontSize: 40, 
                            fontWeight: FontWeight.bold,
                            height: 2.0
                          ),
                        ),
                         SizedBox(height: 50),
                      TextFormField(
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                          ),
                          decoration: InputDecoration(
                          enabledBorder:OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white, width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white, width: 2.0),
                          ),
                          prefixIcon: Icon(Icons.person,
                          color: Colors.white
                          ),
                          hintText: "Full Name",
                          hintStyle: TextStyle(
                            fontSize: 18,
                            color : Colors.white70,
                          ),
                          border : OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20), 
                      TextFormField(
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                        ),
                        decoration: InputDecoration(
                          enabledBorder:OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white, width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white, width: 2.0),
                          ),
                          prefixIcon: Icon(Icons.alternate_email,
                          color: Colors.white,
                          ),
                          hintText: "Valid Email",
                          hintStyle: TextStyle(
                            fontSize: 18,
                            color : Colors.white70,
                          ),
                          border : OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                  TextFormField(
                    obscureText: true,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                        ),
                          decoration: InputDecoration(
                          enabledBorder:OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white, width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white, width: 2.0),
                          ),
                          prefixIcon: Icon(Icons.lock_rounded,
                          color: Colors.white,
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontSize: 18,
                            color : Colors.white70,
                          ),
                          border : OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                  TextFormField(
                        obscureText: true,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                        ),
                          decoration: InputDecoration(
                          enabledBorder:OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white, width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white, width: 2.0),
                          ),
                          prefixIcon: Icon(Icons.lock_rounded,
                          color: Colors.white,
                          ),
                          hintText: "Confirm Password",
                          hintStyle: TextStyle(
                            fontSize: 18,
                            color : Colors.white70,
                          ),
                          border : OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height : 20),
                      SizedBox(
                        width: 318,
                        height: 55,
                        child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                        ),
                        color: Colors.white,
                        child: Text("Sign Up",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          ),
                        ),
                         onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SecondPage())
                          );
                        },
                        ),
                      ),
                      SizedBox(height : 15),
                      RichText(
                        text: TextSpan(
                          text: "Already have an account?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                           ),
                           children: [
                             TextSpan(
                               text: " Sign In",
                               style: TextStyle(
                                 color: Colors.black,
                                 decoration: TextDecoration.underline,
                               ),
                               recognizer: _gestureRecognizer
                             ),
                           ]
                          ),
                        ),
                    ]
                  ),
                ),
            ),
          )
      ),
    );
  }
}