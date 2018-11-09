import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
void main() => runApp(new MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return Login();
  }

}
class Login extends State<Home>
{
  var text="";
  TextEditingController usercontroller=new TextEditingController();
  TextEditingController passwordcontroller=new TextEditingController();

  void _login()
  {
    if(usercontroller.text.isNotEmpty&&passwordcontroller.text.isNotEmpty)
      {
        text="hey ${usercontroller.text}";

      }
      else
        {
          text="please enter your username and password";
        }
        setState(() {

    });
  }
  void _clear()
  {
    usercontroller.clear();
    passwordcontroller.clear();
    setState(() {

    });
  }
  Future<Null> _loginHttp() async{
    var data={
      "Username":usercontroller.text,
      "Password":passwordcontroller.text
    };
    var url="https://s1re5m42q8.execute-api.ap-south-1.amazonaws.com/dev/flutter-login";
    var response=await apiRequest(url,data);
    print(response);
    if(response["Message"]=="Success")
      {
        text="Hey ${usercontroller.text}";
      }
      else
        text="Invalid credentials";
    setState(() {

    });
  }
  Future<Map> apiRequest(var url,var data) async
  {
    http.Response response=await http.post(url,body: json.encode(data));
    return json.decode(response.body);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
      ),
      body: new Container(
        padding: EdgeInsets.all(10.0),
        alignment: Alignment.topCenter,
        child:new ListView(children: <Widget>[ new Column(
          children: <Widget>[
            new Image(image: new AssetImage("Assets/logo.png"),height: 80.0,width: 80.0,),
            new Padding(padding: EdgeInsets.only(top: 20.0),child: 
              new TextField(
                controller: usercontroller,
                decoration: new InputDecoration(
                  icon: new Icon(Icons.person),
                  hintText: "username"
                ),
              ),),
            new Padding(padding: EdgeInsets.only(top: 20.0),child:
            new TextField(
              controller: passwordcontroller,
              obscureText: true,
              decoration: new InputDecoration(
                  icon: new Icon(Icons.lock),
                  hintText: "password",


              ),
            ),),
            new Padding(padding: EdgeInsets.only(top: 30.0),child:
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              new RaisedButton(onPressed: _loginHttp,color: Colors.blue,
              child: new Text("Login"),),

              new RaisedButton(onPressed: _clear,color: Colors.blue,
                child: new Text("Clear"),),
            ], ),
            ),
            new Padding(padding: EdgeInsets.only(top: 20.0),child:
            new Text(
             "$text")


              ),]
            ),]),));
  }

}
