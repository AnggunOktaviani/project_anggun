import 'package:flutter/material.dart';
import 'package:my_data/facebook.dart';
import 'package:my_data/wa.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IDENTITAS'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: 100.0,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('../images/myfoto.jpeg'),
              radius: 100.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            MaterialButton(
                onPressed: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (context) {
                      return _identify();
                    },
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.circular(16.0)),
                  width: 150.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.person),
                      Text('My Biodata'),
                    ],
                  ),
                )),
            SizedBox(
              height: 10.0,
            ),
            MaterialButton(
                onPressed: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (context) {
                      return _medsos();
                    },
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.circular(16.0)),
                  width: 150.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.perm_media_outlined),
                      Text('Media Sosial'),
                    ],
                  ),
                )),
            SizedBox(
              height: 10.0,
            ),
            MaterialButton(
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (context) {
                    return _selengkapnya();
                  },
                );
              },
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54),
                    borderRadius: BorderRadius.circular(16.0)),
                width: 150.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    Text('Selengkapnya'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _identify() {
    return Center(
      child: Container(
        margin: EdgeInsets.all(10.0),
        width: double.infinity,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black54),
          borderRadius: BorderRadius.circular(16.0),
        ),
        height: 300.0,
        child: Column(
          children: [
            SizedBox(
              height: 100.0,
            ),
            Container(
              child: Text('Biodata'),
            ),
            Text('Anggun Oktaviani'),
            Text('Tempat Tanggal Lahir : Banyuasin, 18 Oktober 2001'),
            Text('Alamat : Palembang'),
          ],
        ),
      ),
    );
  }

  Widget _medsos() {
    return Center(
      child: Container(
        margin: EdgeInsets.all(10.0),
        width: double.infinity,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black54),
          borderRadius: BorderRadius.circular(16.0),
        ),
        height: 300.0,
        child: Column(
          children: [
            Container(
              child: Text('MEDIA SOSIAL'),
            ),
            SizedBox(
              height: 40.0,
            ),
            MaterialButton(
                 onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Facebook()));
                },
                child: Container(
                  width: 150.0,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(16.0)),
                  child: Row(
                    children: [
                      Image.asset(
                        '../images/facebook.png',
                        height: 55.0,
                      ),
                      Text('Facebook'),
                    ],
                  ),
                )),
            SizedBox(
              height: 20.0,
            ),
            MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Wa()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(16.0)),
                  width: 150.0,
                  child: Row(
                    children: [
                      Image.asset(
                        '../images/whatsapp.png',
                        height: 55.0,
                      ),
                      Text('Whatsapp'),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget _selengkapnya() {
    return Container(
        margin: EdgeInsets.all(10.0),
        width: double.infinity,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black54),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          children: [
            SizedBox(height: 100.0),
            Text('Mahsiswi Institud Teknologi dan Bisnis Palcomtech'),
            Text('Prodi S1 Informatika'),
            Text('Belum Menikah'),
            Text('Islam'),
            Text('Warga Negara Indonesia'),
            Text('Golongan Darah A++'),
            Text('Sehat'),
          ],
        ));
  }
}
