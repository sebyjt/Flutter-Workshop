import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home: Home(),
));
class Home extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement buildm
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.amber,
          title: new Text("My App"),
          centerTitle: true,
          actions: <Widget>[
            new Icon(Icons.settings)
          ],

        ),
        floatingActionButton: new FloatingActionButton(onPressed: (){print("Pressed");},
          child:new Icon(Icons.camera) ,backgroundColor: Colors.green),
        bottomNavigationBar: new BottomNavigationBar(items: [
          new BottomNavigationBarItem(icon: new Icon(Icons.print), title:new Text("print")),
          new BottomNavigationBarItem(icon: new Icon(Icons.scanner), title:new Text("scan"))

        ]),
        body:new Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: new Container(
              alignment: Alignment.center,
              height: 300.0,
              width: 300.0,
              child: new Stack(
                  children: <Widget>[
                    new Image(image: new AssetImage("Assets/bg.jpg")),
                    new Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Text("Welcome",style: new TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.red
                        ),),
                        new Text("to",style: new TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.red
                        ),),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text("My App",style: new TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.red
                            ),),
                            new Icon(Icons.android,color: Colors.green,)
                          ],
                        )
                      ],
                    ),])
          ),
        )
    );
  }

}

