import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  bool _isLoggedIn = false;

  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  _login() async{
    try{
      await _googleSignIn.signIn();
      setState(() {
        _isLoggedIn = true;
      });
    } catch (err){
      print(err);
    }
  }

  _logout(){
    _googleSignIn.signOut();
    setState(() {
      _isLoggedIn = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

        home: Container(

          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/Fruits2.png"),
                  fit: BoxFit.cover)),

          child: Scaffold(
            backgroundColor: Colors.transparent,
              body: Container(


                  child: Center(
                      child: _isLoggedIn
                          ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.network(_googleSignIn.currentUser.photoUrl, height: 100.0, width: 100.0,),
                          Text(_googleSignIn.currentUser.displayName),
                          RaisedButton(
                            color: Colors.white,
                            elevation: 6.0,
                            splashColor: Colors.lightGreenAccent,
                            child: Text("Logout",
                              style: TextStyle(
                                color: Colors.green,
                              ),), onPressed: (){
                            _logout();
                          },)
                        ],
                      )
                          : Center(
                        child: Expanded(
                          child: RaisedButton(

                            color: Colors.white,
                            elevation: 6.0,
                            splashColor: Colors.lightGreenAccent,

                            child: Text("Login with Google",
                              style: TextStyle(
                                color: Colors.green,
                              ),),
                            onPressed: () {
                              _login();
                            },
                          ),
                        )
                      )),

              )
          )

        )
    );
  }
}

