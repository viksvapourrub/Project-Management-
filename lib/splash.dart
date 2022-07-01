// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override

  void initState(){
    super.initState();
    _jumpHome();
  }

  _jumpHome() async{
    await Future.delayed(const Duration(seconds: 3),(){});
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Home()),
    );
  }

  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: 300,
            child: const Image(image: AssetImage("images/logo.jpeg"),),
          ),
          SizedBox(height:30),
          DefaultTextStyle(style: TextStyle(fontSize: 25,color: Colors.green), child: const Text("NEWS")),
          DefaultTextStyle(style: TextStyle(fontSize: 25,color: Colors.green), child: const Text("CLASSIFER")),
        ],
      ),
    );
  }
}
