import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 120,
              backgroundImage: AssetImage("assets/images/logo2.png"),
            ),
            SizedBox(height: 20,),
            Text("WallPalette",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),),
            SizedBox(height: 20,),
            CircularProgressIndicator(color: Colors.black,)
          ],
        ),
      ),
    );
  }
}
