import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class News {
  String txt;
  int auth;

  News({this.txt, this.auth = 0 });
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light
      ),
      home:  HomePage(),
    );

  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: <Widget>[
       Expanded(child: Menu()),
       Expanded(child: Body()),
      ],),
    );
  }
}

class Body extends StatefulWidget {
 
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index){
          return ListTile(
            title: Text('Summer vacations for schoolchildren and students should be extended until October 1, in order to allow young people to earn extra money or go on vacation in September, an experiment could be conducted in the Far East, State Duma deputy Vasily Vlasov took this initiative.') ,
          );
        },
      ),
    );
  }
}

class Menu extends StatelessWidget {

int auth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
         child: ListView(children: <Widget>[
        ListTile(
          title: Text('Login'),
          leading: Icon(Icons.person),
          onTap: () {showDialog(context: context, builder: (context){
            return AlertDialog(
              title: TextField(),
              content: TextField(),
              actions: <Widget>[
                FloatingActionButton(child: Text('Login'), onPressed: () {
                  Navigator.pop(context);
                  int auth = 1;
                },)
              ],
              );
          } ); 
         },
       ),
        ListTile(
          title: Text('Page 1'),
          leading: Icon(Icons.pageview),
          onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Page1()));
          },
        ),
        ListTile(
          title: Text('Page 2'),
          leading: Icon(Icons.pageview),
          onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Page2()));
          },
        )
         ],),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Text('Page1'),
      ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Text('Page2'),
      ],
      ),
    );
  }
}