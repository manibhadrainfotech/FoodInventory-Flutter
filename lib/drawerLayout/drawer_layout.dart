import 'package:flutter/material.dart';

class MyDrawerLayout extends StatefulWidget {
  const MyDrawerLayout({Key? key}) : super(key: key);

  @override
  State<MyDrawerLayout> createState() => _MyDrawerLayoutState();
}

class _MyDrawerLayoutState extends State<MyDrawerLayout> {
  List<String> texts = ['POV', 'Order', 'Item 1','Item 2','Item 3','Item 4'];

  List<bool> isHighlighted = [true, false, false , false , false , false ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: Container(
          color: Color(0xffEC2325),
          child: Column(
            children: [
              SizedBox(
                height: 110.0,
                child: DrawerHeader(
                  margin: EdgeInsets.all(0.0),
                  padding: EdgeInsets.all(13.0),
                  decoration: const BoxDecoration(
                      color: Color(0xffEC2325)
                  ),
                  child:Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage("assets/images/girls1.jpg"),
                        radius: 40.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Kasmiri Tanduri",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20.0
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 1,
                thickness: 3,
                indent: 0,
                endIndent: 0,
                color: Color(0xffF26768),
              ),
              Expanded(
                child: ListView.builder(
                    padding: EdgeInsets.only(top: 0),
                    itemCount: texts.length,
                    itemBuilder:(context,index){
                      return GestureDetector(
                        onTap:(){
                          for(int i = 0; i < isHighlighted.length; i++ ){
                            setState(() {
                              if(index == i){
                                isHighlighted[index] = true;
                              }else{
                                isHighlighted[i] = false;
                              }
                            });
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30)),
                            color: isHighlighted[index] ? Colors.white :  Color(0xffEC2325),
                          ),
                          child: ListTile(
                            title: Text(texts[index]),
                          ),
                        ),
                      );
                    }),
              ),
              Container(
                child: Text("Text is done",style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

