import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

List<CameraDescription> ?cameras;

class cameraScreen extends StatefulWidget {
  const cameraScreen({Key? key}) : super(key: key);

  @override
  State<cameraScreen> createState() => _cameraScreenState();
}

class _cameraScreenState extends State<cameraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
