import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Pertemuan_9.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Myhome(title: 'Home'),
    );
  }
}

class Myhome extends StatefulWidget {
  const Myhome({super.key, required this.title});

  final String title;

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  int _counter = 2;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  void navigateLogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    int? isLogin = pref.getInt("is_login");
    if(isLogin == 1){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Pertemuan_9(title: 'Flutter Demo Home Page Pertemuan 9')),
      );
    }
  }
  @override
  void initState() {
    navigateLogin();

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: new InputDecoration(
                  labelText:  "WELCOME",

                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5)
                  )
              ),
            ),
            Padding(
                padding: EdgeInsets.all(5)
            ),

            ElevatedButton(
                child: Text(
                  'Login'
                ),
                // Within the `FirstRoute` widget
                onPressed: () async {
                  SharedPreferences pref = await SharedPreferences.getInstance();
                  await pref.setInt("is_login", 1);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const Pertemuan_9(title:'Flutter Demo Home Page Pertemuan 9')),
                  );
                }
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}