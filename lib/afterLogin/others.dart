import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class otherScreen extends StatefulWidget {
  const otherScreen({Key? key}) : super(key: key);

  @override
  _otherScreenState createState() => _otherScreenState();
}

class _otherScreenState extends State<otherScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        body: SafeArea(
            child: GestureDetector(
                child: Column(mainAxisSize: MainAxisSize.max, children: [
          Container(
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Color(0xFFE6E6E6),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 0, 120, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 50,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.05, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Align(
                          alignment: AlignmentDirectional(0.05, 0),
                          child: Text('PROFILE',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'Poppins', fontSize: 25)),
                        ),
                        Text(auth.currentUser!.email!,
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 14)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0)),
          SizedBox(
            child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFE6E6E6),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 10, 0),
                      child: Icon(
                        Icons
                            .settings_outlined, //setting icon infront of edit profile
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                    Text(
                      'Edit Profile',
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 14),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(200, 0, 10, 0),
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          primary: Color(0xFFE6E6E6), // Background color
                        ),
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.black,
                          size: 20,
                        ),
                        label: Text('',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 50,
                              fontWeight: FontWeight.normal,
                            )),
                      ),
                    )
                  ],
                )),
          ),
          SizedBox(
            //Shiping Address
            child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFE6E6E6),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 10, 0),
                      child: Icon(
                        Icons.fmd_good, //setting icon infront of edit profile
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                    Text(
                      'Shiping Address',
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 14),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(165, 0, 10, 0),
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          primary: Color(0xFFE6E6E6), // Background color
                        ),
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.black,
                          size: 20,
                        ),
                        label: Text('',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 50,
                              fontWeight: FontWeight.normal,
                            )),
                      ),
                    )
                  ],
                )),
          ),
          SizedBox(
            //Order History
            child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFE6E6E6),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 10, 0),
                      child: Icon(
                        Icons.restore, //setting icon infront of edit profile
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                    Text(
                      'Order History',
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 14),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(185, 0, 10, 0),
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          primary: Color(0xFFE6E6E6), // Background color
                        ),
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.black,
                          size: 20,
                        ),
                        label: Text('',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 50,
                              fontWeight: FontWeight.normal,
                            )),
                      ),
                    )
                  ],
                )),
          ),
          SizedBox(
            //Notification
            child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFE6E6E6),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 10, 0),
                      child: Icon(
                        Icons
                            .notifications, //setting icon infront of edit profile
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                    Text(
                      'Notification',
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 14),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(195, 0, 10, 0),
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          primary: Color(0xFFE6E6E6), // Background color
                        ),
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.black,
                          size: 20,
                        ),
                        label: Text('',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 50,
                              fontWeight: FontWeight.normal,
                            )),
                      ),
                    )
                  ],
                )),
          ),
          SizedBox(
            //Terms and Conditions
            child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFE6E6E6),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 10, 0),
                      child: Icon(
                        Icons.info, //setting icon infront of edit profile
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                    Text(
                      'Terms and Conditions',
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 14),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(125, 0, 10, 0),
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          primary: Color(0xFFE6E6E6), // Background color
                        ),
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.black,
                          size: 20,
                        ),
                        label: Text('',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 50,
                              fontWeight: FontWeight.normal,
                            )),
                      ),
                    )
                  ],
                )),
          ),
          SizedBox(
              width: 350,
              child: Container(
                  child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: ElevatedButton(
                  child: Text("Sign out",
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 14)),
                  onPressed: () {
                    auth.signOut().then((value) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return MyHomePage();
                      }));
                    });
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                ),
              )))
        ]))));
  }
}
