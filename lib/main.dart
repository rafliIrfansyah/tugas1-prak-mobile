import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Login Screen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
            Container(
              height: 100.0,
              alignment: Alignment.center,
              child: const FlutterLogo(size: 30.0),
              ),
            Container(
              width: 300.0,
              height: 50.0,
              alignment: Alignment.center,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  )
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              width: 300.0,
              height: 50.0,
              alignment: Alignment.center,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: 300.0, // <-- Your width
              height: 25.0, // <-- Your height
              child: ElevatedButton(
                onPressed: (){},
                child: const Text(
                  "Log In"         
                ),
              ),
            ),
          const SizedBox(height: 8.0),
          Container(
              width: 300.0,
              height: 25.0,
              alignment: Alignment.center,
              child: const Text(
                "Forgot Password?"
              ),
            ),
          ],
        ),
      ),
    );
  }
}
