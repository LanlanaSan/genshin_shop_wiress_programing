import 'package:authentification_test/screen/Home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:authentification_test/screen/profile.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile(password: '', email: '');
  final Future<FirebaseApp> firebase = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    const FormBG =
        'https://livewallpaperhd.com/wp-content/uploads/2017/09/Iphone-Stars-Wallpaper-Blue.jpg';
    return FutureBuilder(
        future: firebase,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              appBar: AppBar(
                title: Text("Error"),
              ),
              body: Center(
                child: Text("${snapshot.error}"),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return Scaffold(
                backgroundColor: Color.fromARGB(255, 129, 226, 255),
                appBar: AppBar(
                  title: Text('Create new account'),
                ),
                body: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(FormBG), fit: BoxFit.cover)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 90, 30, 0),
                    child: Form(
                      key: formKey,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Image(
                              image: AssetImage('assets/Genshin-logo.png'),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 50),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Email",
                                labelStyle: const TextStyle(
                                  color: Colors.white,
                                ),
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.white, width: 2.0),
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                              validator: MultiValidator([
                                RequiredValidator(
                                    errorText: 'Please input email'),
                                EmailValidator(
                                    errorText: 'Incorrect email format')
                              ]),
                              keyboardType: TextInputType.emailAddress,
                              onSaved: (String? email) {
                                profile.email = email!;
                              },
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Password",
                                labelStyle: const TextStyle(
                                  color: Colors.white,
                                ),
                                fillColor: Colors.white,
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.white, width: 2.0),
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                              validator: RequiredValidator(
                                  errorText: 'Please input password'),
                              obscureText: true,
                              onSaved: (String? password) {
                                profile.password = password!;
                              },
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                child: const Text('Register',
                                    style: TextStyle(fontSize: 20)),
                                onPressed: () async {
                                  if (formKey.currentState!.validate()) {
                                    formKey.currentState?.save();
                                    try {
                                      await FirebaseAuth.instance
                                          .createUserWithEmailAndPassword(
                                              email: profile.email,
                                              password: profile.password);
                                      Fluttertoast.showToast(
                                        msg:
                                            "Account has been successfully created",
                                        toastLength: Toast.LENGTH_LONG,
                                        gravity: ToastGravity.CENTER,
                                      );
                                      formKey.currentState?.reset();
                                      Navigator.pushReplacement(context,
                                          MaterialPageRoute(builder: (content) {
                                        return const Homescreen();
                                      }));
                                    } on FirebaseAuthException catch (e) {
                                      Fluttertoast.showToast(
                                        msg: e.message!,
                                        toastLength: Toast.LENGTH_LONG,
                                        gravity: ToastGravity.CENTER,
                                      );
                                    }
                                  }
                                },
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
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
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ));
          }
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}
