import 'package:flutter/material.dart';
import 'package:startup_name/mahasiswa/mahasiswa_get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const  MyApp({Key? key});
  static const appTitle = 'Percobaan Drawer';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Center(
        child: Text('Selamat Datang'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/logo.png'),
                ),
                accountName: Text('Aplikasi Mahasiswa'),
                accountEmail: Text('Aplikasi CRUD Mahasiswa')),
            ListTile(
              // leading: const Icon(Icons.access_time_outlined),
              title: const Text('Mahasiswa'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Mahasiswa_get()));
              },
            ),
            ListTile(
              title: const Text('Pertemuan 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}