import 'package:fapp/constraints.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Welcome",
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor:kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: TextTheme(
            display1: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
            button: TextStyle(
              color:Colors.white,
            )
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}
class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/ve.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: " WELCOME   \n CONTINUE AS",
                          style: Theme
                              .of(context)
                              .textTheme
                              .display1
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: FittedBox(
                      child: Container(
                        margin:EdgeInsets.only(bottom: 40),
                        padding: EdgeInsets.symmetric(horizontal: 26,vertical: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: <Widget>[

                            Text(
                              "FARMER",
                              style: Theme.of(context).textTheme.button.copyWith(
                                color: Colors.green,
                              ),
                            ),
                            Icon(
                              Icons.arrow_right,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ),),
                    Padding(
                        padding: EdgeInsets.all(10.0),
                      child: FittedBox(
                        child: Container(
                          margin:EdgeInsets.only(bottom: 40),
                          padding: EdgeInsets.symmetric(horizontal: 26,vertical: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: <Widget>[

                              Text(
                                "CUSTOMER",
                                style: Theme.of(context).textTheme.button.copyWith(
                                  color: Colors.green,
                                ),
                              ),
                              Icon(
                                Icons.arrow_right,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ),
                      ),,
                    )

                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}