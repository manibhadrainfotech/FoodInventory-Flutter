import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodinventory/dashboard.dart';

import 'drawerLayout/drawer_layout.dart';

class ResertPassword extends StatelessWidget {
  const ResertPassword({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reset Password'),
      ),
      body: Container(
        color: Color(0xffF1FFE7),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(100.0),
                child: Center(
                  child: Text(
                    "Resert Password",
                    style: TextStyle(color: Color(0xff1F1E1E), fontSize: 25,fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(right:290.0),
                child: Text("Old Password",
                  style:TextStyle(
                      fontSize: 15,color: Color(0xff1F1E1E)),
                  textAlign: TextAlign.left,
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
                      hintText: 'Old Password',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(right:290.0),
                child: Text("New Password",
                  style:TextStyle(
                      fontSize: 15,color: Color(0xff1F1E1E),fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
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
                      hintText: 'New Password',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute
                    (builder: (context) => DashBoard()));
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10.0),
                  fixedSize: Size(120, 50),
                  textStyle: TextStyle(fontSize: 20.0),
                  primary: Color(0xffEC2325),
                ),
                child:  Text("Submit"),
              ),
            ],
          ),
      ),
    );
  }
}