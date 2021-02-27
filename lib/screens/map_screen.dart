import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  static const routeName = '/map';

  @override
  State<StatefulWidget> createState() => MapState();
}
  class MapState extends State<MapScreen>{
  @override
  void initState(){
    super.initState();
  }

  static final CameraPosition _msc = CameraPosition(target: LatLng(55.7517769362014, 37.61637210845947),zoom: 10);
 @override
  Widget build(BuildContext context){
    return new Scaffold(body:
    GoogleMap(initialCameraPosition: _msc));
  }
  }

