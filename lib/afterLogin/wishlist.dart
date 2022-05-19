import 'package:flutter/material.dart';

class wishlistScreen extends StatelessWidget {
  const wishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ListView(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
              child: ListView(
                padding: EdgeInsets.zero,
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: Color(0x411D2429),
                              offset: Offset(0, 1),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                          child: Row(mainAxisSize: MainAxisSize.max, children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
                              child: Image(
                                image:
                                    AssetImage('assets/Wanderer_necklace.jpg'),
                                fit: BoxFit.cover,
                                height: 150,
                                width: 150,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 8, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Wanderers String-Kettle Necklace'),
                                    Text('฿2091.25'),
                                    Padding(
                                      padding: EdgeInsets.all(8),
                                    ),
                                    ElevatedButton.icon(
                                      onPressed: () {},
                                      icon: Icon(Icons.favorite),
                                      label: Text('Remove from favorite'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ]),
                        ),
                      )),
                  Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: Color(0x411D2429),
                              offset: Offset(0, 1),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                          child: Row(mainAxisSize: MainAxisSize.max, children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
                              child: Image(
                                image: AssetImage('assets/Raidenmousepad.jpg'),
                                fit: BoxFit.cover,
                                height: 150,
                                width: 150,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 8, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Mousepad Raiden Shogun'),
                                    Text('฿372'),
                                    Padding(
                                      padding: EdgeInsets.all(8),
                                    ),
                                    ElevatedButton.icon(
                                      onPressed: () {},
                                      icon: Icon(Icons.favorite),
                                      label: Text('Remove from favorite'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ]),
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
