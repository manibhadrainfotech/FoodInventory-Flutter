import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:foodinventory/resetpassword.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodInventory(),
        // color: Color(0xffF1FFE7),
    );
  }
}

class FoodInventory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Food Inventory"),
      ),
      body: Container(
        color: Color(0xffF1FFE7),
        child: Center(
          child: Column(
            children: [
               Container(
                 margin: EdgeInsets.only(top: 100.0),
                 child: Center(
                  child: Text(
                    "Welcome Back",
                    style: TextStyle(color: Color(0xff1F1E1E), fontSize: 25),
                  ),
              ),
               ),

              Container(
                child: Text("Login!",
                  style:TextStyle(
                      fontSize: 40,color: Color(0xff1F1E1E),fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(
                width: 500,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xff89BF62),
                      prefixIcon: Image.asset("assets/images/username.png",color: Colors.white,height: 25,width: 25,),
                      border: OutlineInputBorder( borderSide: BorderSide(
                        color: Colors.white,
                      ),),
                      hintText: 'Enter Name',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),

              SizedBox(
                width: 500,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xff89BF62),
                      prefixIcon: Icon(Icons.lock,color: Colors.white),
                      border: OutlineInputBorder(borderSide: BorderSide(
                        color: Colors.white,
                      ),),
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute
                    (builder: (context) => ResertPassword()));
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10.0),
                  fixedSize: Size(120,50),
                  textStyle: TextStyle(fontSize: 20.0),
                  primary: Color(0xffEC2325),
                ),
                child:  Text("Login"),
              ),
              Container(
                margin: EdgeInsets.only(top:5),
                child: Center(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute
                        (builder: (context) => ResertPassword()));
                    },
                    child: Text('Reset Your Password ?',style: TextStyle(color: Color(0xffEC2325),
                    decoration: TextDecoration.underline),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

