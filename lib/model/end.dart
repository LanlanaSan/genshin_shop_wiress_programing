import 'package:authentification_test/screen/MainScreen.dart';
import 'package:flutter/material.dart';

class EndPage extends StatefulWidget {
  const EndPage({Key? key}) : super(key: key);

  @override
  State<EndPage> createState() => _EndPageState();
}

class _EndPageState extends State<EndPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Center(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xFF504BFF), Color(0xFF0175FF), Color(0xFF26D8F4)],
            )),
            child: Center(
              child: Text(
                'Order placement complete!',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.all(0),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductScreen(),
                  ),
                );
              },
              child: const Text('Back to product page'),
            ),
          ),
        )
      ],
    ));
  }
}
