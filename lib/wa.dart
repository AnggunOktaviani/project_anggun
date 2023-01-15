import 'package:flutter/material.dart';

class Wa extends StatefulWidget {
  const Wa({super.key});

  @override
  State<Wa> createState() => _WaState();
}

class _WaState extends State<Wa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Akun Whatsapp'),
      ),
body: Container(
  padding: EdgeInsets.all(10.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
padding: EdgeInsets.all(5),
child: Text('Whatsapp',style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
textAlign: TextAlign.right,),
      ),
      Container(
width: double.infinity,
alignment: Alignment.center,
decoration: BoxDecoration(

  border: Border.all(color: Colors.blue),
),
child: Text('Wa : 0822-8940-8001',style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold ),),
      ),

      
    ],
  ),
),
    );
  }
}