import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _contador = 0;

  _incrementar() {
    setState(() {
      _contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "$_contador",
                style: TextStyle(
                  color: Colors.purple.shade300,
                  fontSize: 50,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: _incrementar,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Adicionar',
                  style: TextStyle(
                    color: Colors.pink.shade100,
                    fontWeight: FontWeight.w300,
                    fontSize: 40,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
