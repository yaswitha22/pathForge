import 'package:appthon/favourite.dart';
import 'package:appthon/home.dart';
import 'package:appthon/profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';

class newhome extends StatefulWidget {
  const newhome({super.key});

  @override
  State<newhome> createState() => _newhomeState();
}

class _newhomeState extends State<newhome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [Colors.pinkAccent,Colors.deepPurple]
              )
          ),
        ),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [SizedBox(height: 10,),
              Card(
                elevation: 20,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                color: Colors.deepPurple,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Icon(Icons.home,size: 120,color: Colors.white,),
                          SizedBox(height: 20,),
                          Text("Home", style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 20,
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  color: Colors.pinkAccent,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => favourite()));
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Icon(Icons.favorite,size: 120,color: Colors.white,),
                            SizedBox(height: 20,),
                            Text("Favourites", style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Card(
                elevation: 20,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                color: Colors.deepPurple,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => profile()));
                  },
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Icon(Icons.person,size: 120,color: Colors.white,),
                          SizedBox(height: 20,),
                          Text("Profile", style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),)
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding:EdgeInsets.all(8.0),
          children: [
            DrawerHeader(
             decoration: BoxDecoration(
             color: Colors.deepPurple,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                accountName:Text("",style: TextStyle(color: Colors.black),),
                accountEmail: Text("",style: TextStyle(color: Colors.black),),
                currentAccountPictureSize: Size.square(53),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                  child: Icon(Icons.person,size: 40,color: Colors.white,)
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ),
            //DrawerHeader
            SizedBox(height: 30,),
            ListTile(
              leading: Icon(Icons.person,color: Colors.white,),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              tileColor: Colors.pinkAccent,
              title: Text(' My Profile ',style: TextStyle(fontSize: 20,color: Colors.white),),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
              },
            ),
            SizedBox(height: 20,),
            ListTile(
              leading: Icon(Icons.book,color: Colors.white,),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              tileColor: Colors.deepPurple,
              title: Text(' My Course ',style: TextStyle(fontSize: 20,color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>favourite()));
              },
            ),
            SizedBox(height: 20,),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              leading: Icon(Icons.logout,color: Colors.white,),
              tileColor: Colors.pinkAccent,
              title:  Text(' LogOut',style: TextStyle(fontSize: 20,color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
