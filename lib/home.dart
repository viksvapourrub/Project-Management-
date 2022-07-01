// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsclassifier/about.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var urlController = TextEditingController();
  var textController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.black87,
          title: Padding(
            padding: const EdgeInsets.all(60.0),
            child: Text('HOME PAGE'),
          )
      ),
      drawer: Drawer(
        backgroundColor: Colors.black87,
        child: ListView(
          children: [
            SizedBox(height: 50,),
            ListTile(
              leading: Icon(Icons.account_tree_outlined,size: 30,color: Colors.white,),
              title: Text("CLASSIFICATION",style:TextStyle(fontSize: 20,color: Colors.white,backgroundColor: Color(0xff777777))),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
            ),
            SizedBox(height: 50,),
            ListTile(
              leading: Icon(Icons.people_alt_sharp,size: 30,color: Colors.white,),
              title: Text("ABOUT US",style:TextStyle(fontSize: 20,color: Colors.white,backgroundColor: Color(0xff777777))),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUs()),
                );
              },
            ),
            SizedBox(height: 50,),
            ListTile(
              leading: Icon(Icons.question_mark_outlined,size: 30,color: Colors.white,),
              title: Text("HELP",style:TextStyle(fontSize: 20,color: Colors.white,backgroundColor: Color(0xff777777))),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xff777777),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          color: Color(0xff777777),
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 50,),
                Container(height: 35,width:260,child: Text("CLASSIFICATION",style:TextStyle(fontSize: 28,color: Colors.white),textAlign: TextAlign.center,),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20)
                ),),
                SizedBox(height: 50,),
                Row(
                  children: [
                    SizedBox(
                      width: 270,
                      child: TextFormField(
                        controller: urlController,
                        style: TextStyle(fontSize: 20,color: Colors.white),
                        decoration: InputDecoration(
                          fillColor: Colors.black,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          hintText: "Enter URL",
                          hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                          labelText: "URL Link",
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    CircleAvatar(child: Icon(Icons.search,size: 50,color: Colors.white,),backgroundColor: Colors.black,maxRadius: 28,)
                  ],
                ),
                SizedBox(height: 50,),
                Row(
                  children: [
                    SizedBox(
                      width: 270,
                      child: TextFormField(
                        controller: textController,
                        style: TextStyle(fontSize: 20,color: Colors.white),
                        decoration: InputDecoration(
                          fillColor: Colors.black,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          hintText: "Text Input",
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                          labelText: "URL Text",
                          labelStyle: TextStyle(
                            color: Colors.white,
                          ),
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    CircleAvatar(child: Icon(Icons.search,size: 50,color: Colors.white,),backgroundColor: Colors.black,maxRadius: 28,)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
