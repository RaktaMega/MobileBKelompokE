import 'package:flutter/material.dart';
// mengimport package flutter material.dart
void main() => runApp(MyApp());
// function untuk run app
class MyApp extends StatelessWidget {
  // StatelessWidget  widget yang berfungsi untuk menampilkan hal-hal yang sifatnya statis mudahnya setelah data ditampilkan maka kita tidak akan merubahnya lagi.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Mobile B Kelompok E SDGS 12',
        debugShowCheckedModeBanner: false,
        // cara menghapus tulisan debug
        theme: ThemeData(
            primarySwatch: Colors.brown
        ),
        home: MyHomePage()

    );
  }
}

class MyHomePage extends StatelessWidget {
  // StatelessWidget  widget yang berfungsi untuk menampilkan hal-hal yang sifatnya statis mudahnya setelah data ditampilkan maka kita tidak akan merubahnya lagi.
  Widget build(BuildContext context) {

    return Scaffold(
      // Scaffold merukapan Widget diawali dengan huruf Kapital dan berupa Class dan juga untuk memanggil property appBar
      // Scaffold widget utama dalam membuat sebuah halaman pada flutter
        appBar: AppBar(
          // AppBar merupakan Widget juga ini digunakan untuk membuat Bar dan untuk memanggil property title
          title: Text('Mobile B Kelompok E SDGs 12'),
          //warna pada app bar
          backgroundColor: Colors.brown,
        ),

        body: Center(
          child: Column(
            // widget akan mengarah secara vertikal atau dari atas kebawah, widget ini juga menggunakan property children artinya widget ini bisa diisi oleh banyak widget.
            children: [
              ListTile(
                title: Text("Fogi Erlingga"),
                //memposisikan tulisan disebelah kanan
                trailing: Text('182410103056'),
              ),
              ListTile(
                title: Text("Anggik Muhammad S"),
                //memposisikan tulisan disebelah kanan
                trailing: Text('182410103021'),
              ),
              ListTile(
                title: Text("Rakta Mega Giebrillia Query Kusuma Dery"),
                //memposisikan tulisan disebelah kanan
                trailing: Text('182410103067'),
              ),
              FlatButton.icon(//buat ikon
                icon: Icon(Icons.accessibility),//ini ikonnya
                label: Text('Ketuk'),
                onPressed: (){ // buat menekan
                  Navigator.push( //lalu pindah halam
                      context,
                      MaterialPageRoute(builder: (context)=>MySecondPage()));//buat ngeroute ke halaman mana
                },
              )
            ],
          ),
        )
    );
  }
}

class MySecondPage extends StatelessWidget {
  // StatelessWidget  widget yang berfungsi untuk menampilkan hal-hal yang sifatnya statis mudahnya setelah data ditampilkan maka kita tidak akan merubahnya lagi.
  Widget build(BuildContext context) {

    return Scaffold(
      // Scaffold merukapan Widget diawali dengan huruf Kapital dan berupa Class dan juga untuk memanggil property appBar
      // Scaffold widget utama dalam membuat sebuah halaman pada flutter
        appBar: AppBar(
          // AppBar merupakan Widget juga ini digunakan untuk membuat Bar dan untuk memanggil property title
          title: Text('Ini Kami'),
          //warna pada app bar
          backgroundColor: Colors.brown,
        ),

        body: Center(
          child: Column(
            // widget akan mengarah secara vertikal atau dari atas kebawah, widget ini juga menggunakan property children artinya widget ini bisa diisi oleh banyak widget.
            children: [
              ListTile(
                title: Text("Anggik Muhammad S"),
                //memposisikan tulisan disebelah kanan
                trailing: Text('182410103021'),
              ),
              ListTile(
                title: Text("Fogi Erlingga"),
                //memposisikan tulisan disebelah kanan
                trailing: Text('182410103056'),
              ),
              ListTile(
                title: Text("Rakta Mega Giebrillia Query Kusuma Dery"),
                //memposisikan tulisan disebelah kanan
                trailing: Text('182410103067'),
              ),
              FlatButton.icon(//buat ikon
                icon: Icon(Icons.accessibility),//ini ikonnya
                label: Text('kembali'),//ikon nya dikasih tulisan text kembali
                onPressed: (){//semisal ditekan
                  Navigator.pop(context);//ini kembali ke halaman sebelumnya
                },
              )
            ],
          ),
        )
    );
  }
}