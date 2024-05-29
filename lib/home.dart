import 'package:flutter/material.dart';
import 'package:projecthome/dairy entry.dart';
import 'package:projecthome/memory%20bank.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/page.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 4,
          backgroundColor: Colors.transparent,
          title: Text("Vintage Diary",style: TextStyle(color: Colors.black),),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu,color: Colors.black,size: 30,),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.star,
                    size: 30.0,
                    color: Colors.black,
                  ),
                )),
          ],
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.black,
            padding: EdgeInsets.all(20),
            child:Column(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: CircleAvatar(
                    child: Image.asset("assets/logo_vintage.png"),
                    radius: 45,

                  ),
                ),
                SizedBox(
                  height: 50,width: 15,
                ),
                Column(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'About us',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),

                    SizedBox(
                      height: 30,width: 50,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 120),
                      child: Text("e.g. Dairy Entry",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 100),
                      child: Text("e.g. Memory Bank",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: <Widget>[
              GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>dairy_entry()));
              },
                child:
                Card(

                  child: SizedBox(
                    height: 50,
                    child: ListTile(
                      leading: CircleAvatar(
                        child:Image.asset("assets/logo_vintage.jpeg"),
                      ),
                      title: Text('Dairy Entry'),
                    ),
                  ),
                ),),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>memory_list()));
                },
                child:
                Card(
                  child: SizedBox(
                    height: 50,
                    child: ListTile(
                      leading: Icon(Icons.food_bank_rounded),
                      title: Text('Memory Bank'),
                    ),
                  ),
                ),),
            ],
          ),
        ),
      ),
    );
  }
}