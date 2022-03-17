import 'package:flutter/material.dart';
import 'package:authentification_test/screen/register.dart';
import 'package:authentification_test/screen/login.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const urlImage = 'assets/Genshin-wallpaper.png';

    return Scaffold(
        appBar: AppBar(
          title: RichText(
              text: const TextSpan(children: [
            TextSpan(
              text: 'GENSHIN SHOP',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
            ),
          ])),
          centerTitle: true,
        ),
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(urlImage), fit: BoxFit.cover)),
            child: Padding(
              //padding of buttons
              padding: const EdgeInsets.fromLTRB(50, 30, 50, 0),
              child: Column(
                children: [
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        icon: const Icon(Icons.account_circle),
                        label: const Text('New user register',
                            style: TextStyle(fontSize: 20)),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (content) {
                            return const RegisterScreen();
                          }));
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              return Colors.blue.shade900;
                            },
                          ),
                        ),
                      )),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        icon: const Icon(Icons.login),
                        label:
                            const Text('Login', style: TextStyle(fontSize: 20)),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (content) {
                            return const LoginScreen();
                          }));
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              return Colors.blue.shade900;
                            },
                          ),
                        ),
                      )),
                ],
              ),
            )));
  }
}
