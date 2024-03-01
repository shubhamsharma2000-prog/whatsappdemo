import 'package:ff/chatswidget.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(70),
              child: AppBar(
                title: Padding(
                  padding:  EdgeInsets.only(top:10),
                  child: Text("WhatsApp",style: TextStyle(fontSize:15,color: Colors.white),),
                ),
                actions: [
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(Icons.search,color: Colors.white,size: 20,),
                  ),
                  PopupMenuButton(
                    elevation: 8,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    iconSize: 20,
                    iconColor: Colors.white,
                    itemBuilder: (context) => (
                      [
                        PopupMenuItem(
                            value: 1,
                            child: Text(
                              "New Group",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                              ),)),
                        PopupMenuItem(
                            value: 2,
                            child: Text(
                              "New broadcast",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500
                              ),)),
                        PopupMenuItem(
                            value: 3,
                            child: Text(
                              "Linked Device",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500
                              ),)),
                        PopupMenuItem(
                            value: 4,
                            child: Text(
                              "Stared message",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500
                              ),)),
                        PopupMenuItem(
                            value: 5,
                            child: Text(
                              "Settings",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500
                              ),))
                      ]
                    ),
                  )
                ],


              ),
            ),
          body: Column(
            children: [
              Container(
                color: Color(0xFF075E55),
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  indicatorWeight: 1,
                  labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                  tabs: [
                    Container(
                      width: 10,
                      child: Tab(
                        icon:Icon(Icons.camera_alt,color: Colors.white,)
                      ),
                    ),
                    Container(
                      width: 60,
                      child: Tab(
                              child: Text("CHATS",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    Container(
                      width: 60,
                      child: Tab(
                        child: Text("STATUS",style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Container(
                      width: 60,
                      child: Tab(
                        child: Text("CALLS",style: TextStyle(color: Colors.white)),
                      ),
                    )
                  ],

                ),
              ),
              Flexible(child: TabBarView(
                children: [
                  Container(color: Colors.black,),
                  chatswidget(),
                  Container(color: Colors.black,),
                  Container(color: Colors.black,),
                ],
              ))
            ],
          ),
        ),
    );
  }
}
