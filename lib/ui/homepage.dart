import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';
import 'package:go_router/go_router.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextButton(
              style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white)),
              onPressed: () => context.go('/details'),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(style: TextStyle(fontSize: 16), 'Leygen'), // <-- Text
                  SizedBox(
                    width: 7,
                  ),
                  Icon(
                    // <-- Icon
                    Icons.account_circle,
                    size: 24.0,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              rotation: 0,
              interactiveFlags: InteractiveFlag.all & ~InteractiveFlag.rotate,
              center: LatLng(51.509364, -0.128928),
              zoom: 9.2,
            ),
            nonRotatedChildren: [
              AttributionWidget.defaultWidget(
                source: 'OpenStreetMap contributors',
                onSourceTapped: null,
              ),
            ],
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
            ],
          ),
          // change to map view
          Positioned(
              bottom: (MediaQuery.of(context).size.height) / 2,
              left: (MediaQuery.of(context).size.width) / 2.1,
              child: Icon(Icons.pin_drop_outlined)),
          Positioned(
            right: 16,
            bottom: 250,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.black,
              child: Icon(Icons.my_location),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Center(
              child: SizedBox(
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        hintText: "Start",
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "End",
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(200, 50),
                              backgroundColor: Colors.black),
                          onPressed: () {},
                          child: Text("CONFIRM")),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
