import 'package:authentification_test/model/end.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

class ShipAddress extends StatefulWidget {
  const ShipAddress({Key? key}) : super(key: key);

  @override
  State<ShipAddress> createState() => _ShipAddressState();
}

class _ShipAddressState extends State<ShipAddress> {
  late GoogleMapController _googleMapController;
  late String shipingAddress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Shipping Address'),
        ),
        body: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: onMapCreated,
              initialCameraPosition: CameraPosition(
                target: LatLng(13.7563, 100.5018),
                zoom: 15,
              ),
              //onMapCreated: (controller) => _googleMapController = controller,
            ),
            Positioned(
              top: 10,
              right: 15,
              left: 15,
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Please enter your address here...',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 15.0, top: 10.0),
                        suffixIcon: IconButton(
                            icon: Icon(Icons.search),
                            onPressed: searchLocation,
                            iconSize: 30.0)),
                    onChanged: (val) {
                      setState(() {
                        shipingAddress = val;
                      });
                    }),
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
                        builder: (context) => EndPage(),
                      ),
                    );
                  },
                  child: const Text('Confirm'),
                ),
              ),
            )
          ],
        ));
  }

  searchLocation() {
    GeocodingPlatform.instance
        .locationFromAddress(shipingAddress)
        .then((result) {
      _googleMapController.animateCamera(CameraUpdate.newCameraPosition(
          CameraPosition(
              target: LatLng(result[0].latitude, result[0].longitude),
              zoom: 15.0)));
    });
  }

  void onMapCreated(GoogleMapController controller) {
    setState(() {
      _googleMapController = controller;
    });
  }
}
