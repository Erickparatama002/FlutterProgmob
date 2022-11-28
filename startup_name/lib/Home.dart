import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/logo.png'),
              ),
                accountName: Text('aplikasi uas'),
                accountEmail: Text('aplikasi CRUD'),
            ),
            ListTile(
              leading: Icon(Icons.access_time_filled_outlined),
              title: Text('Pertemuan 1'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Pertemuan 13'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Card View'),
              onTap: (){
                Navigator.pop(context);
              },
            )

          ],
        ),
      ),
      body: ListView(
        children: [
          buildContainer(),
          buildContainer(),
          buildContainer(),
          buildContainer(),
          Card(
            color: Colors.cyanAccent,
            elevation: 8,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.add_a_photo),
                    title: Text("Berbeda dengan kebanyakan merek yang menjunjung tinggi konsep copy paste, Oppo hadirkan perangkat dengan spesifikasi yang mumpuni. Tak hanya unggulkan aspek kinerjanya saja, Oppo juga memproduksi perangkat dengan desain atau tampilan luar yang tampak premium. Konsep yang ditawarkan inilah membuat Oppo bisa dengan mudah diterima oleh masyarakat Indonesia.Untuk membuatnya semakin menarik perhatian, Oppo tidak hanya hadirkan produk premium atau flagship dengan harga yang cukup mahal. Tidak lupa, Oppo juga telah memproduksi beragam perangkat mobile yang sesuai dengan kebutuhan berbagai kalangan masyarakat. Mulai dari kalangan menengah hingga kalangan menengah ke bawah. Benar saja, saat ini banyak perangkat mobile Oppo yang dijual dengan harga ramah kantong. Anda sebagai pengguna hanya tinggal menentukan, mana produk yang sesuai dengan bujet.Meski terbilang baru dalam memasuki pasar smartphone di Indonesia, tidak sulit bagi Oppo untuk bisa menguasai pasar. Buktinya, Oppo saat ini sudah menjadi produsen smartphone asal Tiongkok terlaris kedua di Indonesia setelah Xiaomi. Hal ini menunjukkan jika kualitas dari perangkat Oppo tidak bisa disepelekan begitu saja. Oppo Find 5 yang merupakan produk pertama Oppo di Indonesia merupakan sebuah perangkat flagship.Mengetahui kehadirannya mendapatkan respon yang positif, Oppo kemudian merilis produk barunya di tahun yang sama, yakni seri Oppo Find Way. Perangkat ini hadir dengan harga yang tidak semahal seri pendahulunya. Meski begitu, spesifikasi dan kualitas yang ditawarkan tetaplah sama bagus. Oppo begitu percaya diri mengenalkan perangkatnya ke Indonesia berkat prosesor unggul yang disematkan pada setiap serinya."),
                    subtitle: Text("Berbeda dengan kebanyakan merek yang menjunjung tinggi konsep copy paste, Oppo hadirkan perangkat dengan spesifikasi yang mumpuni. Tak hanya unggulkan aspek kinerjanya saja, Oppo juga memproduksi perangkat dengan desain atau tampilan luar yang tampak premium. Konsep yang ditawarkan inilah membuat Oppo bisa dengan mudah diterima oleh masyarakat Indonesia.Untuk membuatnya semakin menarik perhatian, Oppo tidak hanya hadirkan produk premium atau flagship dengan harga yang cukup mahal. Tidak lupa, Oppo juga telah memproduksi beragam perangkat mobile yang sesuai dengan kebutuhan berbagai kalangan masyarakat. Mulai dari kalangan menengah hingga kalangan menengah ke bawah. Benar saja, saat ini banyak perangkat mobile Oppo yang dijual dengan harga ramah kantong. Anda sebagai pengguna hanya tinggal menentukan, mana produk yang sesuai dengan bujet.Meski terbilang baru dalam memasuki pasar smartphone di Indonesia, tidak sulit bagi Oppo untuk bisa menguasai pasar. Buktinya, Oppo saat ini sudah menjadi produsen smartphone asal Tiongkok terlaris kedua di Indonesia setelah Xiaomi. Hal ini menunjukkan jika kualitas dari perangkat Oppo tidak bisa disepelekan begitu saja. Oppo Find 5 yang merupakan produk pertama Oppo di Indonesia merupakan sebuah perangkat flagship.Mengetahui kehadirannya mendapatkan respon yang positif, Oppo kemudian merilis produk barunya di tahun yang sama, yakni seri Oppo Find Way. Perangkat ini hadir dengan harga yang tidak semahal seri pendahulunya. Meski begitu, spesifikasi dan kualitas yang ditawarkan tetaplah sama bagus. Oppo begitu percaya diri mengenalkan perangkatnya ke Indonesia berkat prosesor unggul yang disematkan pada setiap serinya."),
                  ),
                  Row(
                    children: [
                      TextButton(
                        child: Text('buy tikert'),
                        onPressed: (){},
                      ),
                      TextButton(
                        child: Text('Listen'),
                        onPressed: (){},
                      )
                    ],
                  )
                ],
              ),
          )
        ],
      ),
    );
  }

  Container buildContainer() {
    return Container(
          child: Text("Berbeda dengan kebanyakan merek yang menjunjung tinggi konsep copy paste, Oppo hadirkan perangkat dengan spesifikasi yang mumpuni. Tak hanya unggulkan aspek kinerjanya saja, Oppo juga memproduksi perangkat dengan desain atau tampilan luar yang tampak premium. Konsep yang ditawarkan inilah membuat Oppo bisa dengan mudah diterima oleh masyarakat Indonesia.Untuk membuatnya semakin menarik perhatian, Oppo tidak hanya hadirkan produk premium atau flagship dengan harga yang cukup mahal. Tidak lupa, Oppo juga telah memproduksi beragam perangkat mobile yang sesuai dengan kebutuhan berbagai kalangan masyarakat. Mulai dari kalangan menengah hingga kalangan menengah ke bawah. Benar saja, saat ini banyak perangkat mobile Oppo yang dijual dengan harga ramah kantong. Anda sebagai pengguna hanya tinggal menentukan, mana produk yang sesuai dengan bujet.Meski terbilang baru dalam memasuki pasar smartphone di Indonesia, tidak sulit bagi Oppo untuk bisa menguasai pasar. Buktinya, Oppo saat ini sudah menjadi produsen smartphone asal Tiongkok terlaris kedua di Indonesia setelah Xiaomi. Hal ini menunjukkan jika kualitas dari perangkat Oppo tidak bisa disepelekan begitu saja. Oppo Find 5 yang merupakan produk pertama Oppo di Indonesia merupakan sebuah perangkat flagship.Mengetahui kehadirannya mendapatkan respon yang positif, Oppo kemudian merilis produk barunya di tahun yang sama, yakni seri Oppo Find Way. Perangkat ini hadir dengan harga yang tidak semahal seri pendahulunya. Meski begitu, spesifikasi dan kualitas yang ditawarkan tetaplah sama bagus. Oppo begitu percaya diri mengenalkan perangkatnya ke Indonesia berkat prosesor unggul yang disematkan pada setiap serinya."),
          padding: EdgeInsets.all(8.0),
        );
  }
}
