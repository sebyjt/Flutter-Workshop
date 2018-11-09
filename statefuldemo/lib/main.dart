import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home: Home(),
));
class Home extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return HomeState();}
  
  
}
class HomeState extends State<Home>
{
  var count=0;
  TextEditingController controller=new TextEditingController()
  @override
  _counter()
  {
    count++;
    setState(() {

    });
  }
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stateful App"),
      ),
      body: new Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.only(top: 50.0,left: 30.0,right: 30.0),
        child: new Column(
          children: <Widget>[
            new TextField(
              decoration: new InputDecoration(
                hintText: "enter your name"
              ),
              controller: controller,
            ),
            new Padding(padding: EdgeInsets.only(top: 10.0,left: 30.0,right: 30.0),
              child:new RaisedButton(onPressed:(){setState(() {

              });},color: Colors.green,
              child: new Text("Say my name"),),),
            new Padding(padding: EdgeInsets.only(top: 30.0,left: 30.0,right: 30.0),
              child: new Text("hi ${controller.text}",style: new TextStyle(
                color: Colors.blue,
                fontSize: 22.0
              ),),),
            new Padding(padding: EdgeInsets.only(top: 30.0,left: 30.0,right: 30.0),
              child: new Text("you pressed $count times",style: new TextStyle(
                  color: Colors.blue,
                  fontSize: 22.0
              ),),),
            new Padding(padding: EdgeInsets.only(top: 10.0,left: 30.0,right: 30.0),
              child:new RaisedButton(onPressed:_counter,color: Colors.amber,
                child: new Text("Press me"),),),

          ],
        ),
      ),
    );
  }
  
}