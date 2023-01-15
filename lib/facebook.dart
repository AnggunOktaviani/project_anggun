import 'package:flutter/material.dart';

class Facebook extends StatefulWidget {
  const Facebook({super.key});

  @override
  State<Facebook> createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Akun Facebook'),
      ),
body: Container(
  padding: EdgeInsets.all(10.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
padding: EdgeInsets.all(5),
child: Text('Facebook',style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
textAlign: TextAlign.right,),
      ),
      Container(
width: double.infinity,
alignment: Alignment.center,
decoration: BoxDecoration(

  border: Border.all(color: Colors.blue),
),
child: Text(' Anggun Oktaviani',style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold ),),
      ),

      
    ],
  ),
),
    );
  }
}