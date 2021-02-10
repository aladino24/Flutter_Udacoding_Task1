// Flutter Drawer Navigation
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Post Title',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(title: 'Your Blogs'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 1;
  // set up the button

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _setTime() {
    print('Set Time');
  }

  void _addTime() {
    print('ADD TIME');
  }

  void itemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void CallContact() {
    print("Calling contact");
  }

  void AddInfoToContact() {
    print("Adding Info To Contact");
  }

  void ItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
        color: Colors.black,
        ),
        backgroundColor: Colors.yellow[800],
        title: Text(widget.title,
        style: TextStyle(
          color: Colors.black
        ),
        ),
      ),
      
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.local_hospital_rounded),
              title: Text("Kesehatan"),
              onTap: () {
                // Change the applications state
                print("Change page");
                Navigator.pop(context);
              },
            ),
             ListTile(
              leading: Icon(Icons.music_video_rounded),
              title: Text("Hiburan"),
              onTap: () {
                // Change the applications state
                print("Change page");
                Navigator.pop(context);
              },
            ),
             ListTile(
              leading: Icon(Icons.work_outlined),
              title: Text("Pendidikan"),
              onTap: () {
                // Change the applications state
                print("SIlahkan Pindah Halaman");
                Navigator.pop(context);
              },
            ),
             ListTile(
              leading: Icon(Icons.logout),
              title: Text("Log Out"),
              onTap: () {
                // Change the applications state
                print("Silahkan Pindah Halaman");
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
  
      body:  Container(

        margin: EdgeInsets.fromLTRB(20.0,30.0,30.0,20.0),
        child: Container(
          child: Column(
            children: [
              Container(
                 decoration: const BoxDecoration(
                  border: Border(
                  bottom: BorderSide(width: 0.70, color: Color(0xFFFF000000))
                ),
                ),
                child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                        child: CircleAvatar(
                          maxRadius: 28,
                          backgroundColor: Colors.brown,
                          child: Text("W",
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.white
                          ),
                          ),
                        ),
                        ),
                    Container(
                      width: 160,
                      height: 90,
                       margin: EdgeInsets.only(left: 17,bottom: 20),
                        child: Column(
                          children: [
                            Text("What is Flutter?      ",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(                   
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                              ),
                            ),
                            Text("Dart is a client optimized programming language for apps on multiple platformsIt is developed..",          
                            
                            ),
                          ],
                        ),
                      ),
                    Container(
                       width: 90,
                      margin: EdgeInsets.only(left: 17, bottom: 77),
                        child: Text("Jan 26,2021"),
                        ),
                      ],  
                  ),
              ),
              Container(
                 margin: EdgeInsets.only(top: 15),
                decoration: const BoxDecoration(
                  border: Border(
                  bottom: BorderSide(width: 0.70, color: Color(0xFFFF000000))
                ),
                ),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                          child: CircleAvatar(
                            maxRadius: 28,
                            backgroundColor: Colors.green,
                            child: Text("W",
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.white
                            ),
                            ),
                          ),
                          ),
                      Container(
                        width: 160,
                        
                         margin: EdgeInsets.only(left: 17,bottom: 20),
                          child: Column(
                            children: [
                              Text("What is Flutter?      ",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(                   
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                                ),
                              ),
                              Text("Flutter is Google's UI toolkit for building beautiful,natively compiled applications for...",          
                              
                              ),
                            ],
                          ),
                        ),
                      Container(
                         width: 90,
                        margin: EdgeInsets.only(left: 17, bottom: 77),
                          child: Text("Jan 26,2021"),
                          ),
                        ],  
                ),
              ),
            ],
          ),
        ),
      ),
      
      

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey[700],
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This t
      // railing comma makes auto-formatting nicer for build methods.
    );
  }
}