import 'package:flutter/material.dart';

class dairy_page extends StatefulWidget {
  const dairy_page({Key? key}) : super(key: key);

  @override
  State<dairy_page> createState() => _dairy_pageState();
}

class _dairy_pageState extends State<dairy_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                ),
              ],
            ),
          ),
        ),
        body: Container(
            decoration: BoxDecoration(
                 image: DecorationImage(
                      image: AssetImage('assets/dairy_page.jpg'),fit: BoxFit.cover),
              color: Colors.transparent,
    ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 80.0,horizontal: 10.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.transparent,
                      filled: true,
                      hintText: 'Text',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ],
            ),
          ),

        ),
       ),
    );
  }
}