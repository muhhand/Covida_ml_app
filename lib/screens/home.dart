import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ml_classifier/constants.dart/constants.dart';
import 'package:ml_classifier/screens/result.dart';
import 'package:tflite/tflite.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool loading = false;
  File? _image;
  List? _output;
  final imagepicker = ImagePicker();

  @override
  void initState() {
    super.initState();
    loadmodel().then((value) {
      setState(() {});
    });
  }

  detectimage(File image) async {
    loading = true;
    setState(() {});

    var prediction = await Tflite.runModelOnImage(
        path: image.path,
        numResults: 2,
        threshold: 0.6,
        imageMean: 127.5,
        imageStd: 127.5);

    setState(() {
      _output = prediction!;
      loading = false;
    });

    loading = false;
    setState(() {});

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Result(
                  image: _image!,
                  result: (_output?[0]['label']).toString().substring(2),
                  confidence: 'Confidence: ' +
                      (_output?[0]['confidence']).toString().substring(2, 4) +
                      '%',
                )));
  }

  loadmodel() async {
    await Tflite.loadModel(
        model: 'assets/tf_lite_model.tflite', labels: 'assets/labels.txt');
  }

  @override
  void dispose() {
    super.dispose();
  }

  pickimage_camera() async {
    loading = true;
    var image = await imagepicker.pickImage(source: ImageSource.camera);
    if (image == null) {
      return null;
    } else {
      _image = File(image.path);
    }
    loading = false;
    setState(() {});
    detectimage(_image!);
  }

  pickimage_gallery() async {
    loading = true;
    setState(() {});
    var image = await imagepicker.pickImage(source: ImageSource.gallery);

    if (image == null) {
      return null;
    } else {
      _image = File(image.path);
    }

    loading = false;
    setState(() {});
    detectimage(_image!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: mainTextColor,
          ),
          backgroundColor: backgroundColor,
          centerTitle: true,
          title: Text(
            'COVID-19 Detector',
            style: GoogleFonts.roboto(color: Colors.white),
          ),
        ),
        body: loading == true
            ? Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              )
            : Column(
                children: [
                  ListTile(
                    title: Text(
                      'Pick Image From Gallery',
                      style:
                          GoogleFonts.roboto(color: Colors.white, fontSize: 18),
                    ),
                    leading: Icon(
                      Icons.image,
                      color: Colors.white,
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          pickimage_gallery();
                        },
                        icon: Icon(
                          Icons.next_plan,
                          color: mainTextColor,
                        )),
                  ),
                  ListTile(
                    title: Text(
                      'Pick Image From Camera',
                      style:
                          GoogleFonts.roboto(color: Colors.white, fontSize: 18),
                    ),
                    leading: Icon(
                      Icons.camera,
                      color: Colors.white,
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          pickimage_camera();
                        },
                        icon: Icon(
                          Icons.next_plan,
                          color: mainTextColor,
                        )),
                  ),
                ],
              ));
  }
}
