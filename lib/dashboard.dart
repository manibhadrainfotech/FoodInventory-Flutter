import 'dart:ui';
import 'package:flutter/material.dart';
import 'drawerLayout/drawer_layout.dart';
import 'package:intl/intl.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.red),
        title: Text(
          DateFormat.yMMMd().format(DateTime.now()),
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DashBoard()));
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(10.0),
              fixedSize: Size(230, 60),
              textStyle: TextStyle(fontSize: 20.0),
              primary: Colors.lightGreen,
            ),
            child: Text("Add"),
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            tooltip: 'Comment Icon',
            color: Colors.black,
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            color: Colors.black,
            onPressed: () {},
          ), //IconButton
        ],
      ),
      drawer: MyDrawerLayout(),
      body: DefaultTabController(
        length: 2,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10.0)),
                child: TabBar(
                  indicator: BoxDecoration(
                      color: Colors.green[300],
                      borderRadius: BorderRadius.circular(10.0)),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: const [
                    Tab(
                      text: 'Chats',
                    ),
                    Tab(
                      text: 'Status',
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    Center(
                      child: Text("Chats Pages"),
                    ),
                    Center(
                      child: Text("Status Pages"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
