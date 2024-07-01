import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:mobile/widgets/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        brightness: Brightness.dark,
        primaryIconTheme: IconThemeData(color: Colors.white),
      ),
      home: Order(),
    );
  }
}

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  final urlApi = 'http://192.168.141.167:5000/recommendation';

  XFile? image;

  final ImagePicker picker = ImagePicker();

  //we can upload image from camera or from gallery based on parameter
  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);

    setState(() {
      image = img;
    });
  }

  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            backgroundColor: Colors.grey,
            title: Text('Please choose media to select',
                textAlign: TextAlign.center),
            content: Container(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  ElevatedButton.icon(
                    //if user click this button, user can upload image from gallery
                    label: Text(
                      'From Gallery',
                      style: TextStyle(
                        fontSize: 20.5,
                      ),
                    ),
                    icon: Icon(Icons.photo_album),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber[600],
                        shape: StadiumBorder()),
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.gallery);
                    },
                  ),
                  ElevatedButton.icon(
                    //if user click this button. user can upload image from camera
                    label: Text(
                      'From Camera',
                      style: TextStyle(
                        fontSize: 20.5,
                      ),
                    ),
                    icon: Icon(Icons.camera),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber[600],
                        shape: StadiumBorder()),
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.camera);
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
              Text('Upload Image', style: TextStyle(color: Colors.amber[600])),
          centerTitle: true,
          backgroundColor: Colors.black, // Change the background color to black
          leading: IconButton(
            icon: Icon(Icons.arrow_back,
                color: Colors.white), // Change the back button color to white
            onPressed: () => Navigator.of(context).pop(),
          )),
      body: Container(
        color: Colors.grey,
        padding: EdgeInsets.all(30),
        child: Container(
            child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                // Buat gambar
                image != null
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.file(
                            //to show image, you type like this.
                            File(image!.path),
                            fit: BoxFit.cover,
                            width: 250,
                            // width: MediaQuery.of(context).size.width,
                            height: 300,
                          ),
                        ),
                      )
                    : Text(
                        "No Image",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 300,
                        height: 70.0,
                        child: ElevatedButton.icon(
                          label: Text(
                            'Upload',
                            style: TextStyle(
                              fontSize: 20.5,
                            ),
                          ),
                          icon: Icon(Icons.upload_file_outlined),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber[600],
                              shape: StadiumBorder()),
                          onPressed: () => {myAlert()},
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 50,
                ),

                SizedBox(
                  height: 70.0,
                  width: 300,
                  child: ElevatedButton.icon(
                    label: Text(
                      'Result',
                      style: TextStyle(
                        fontSize: 22.0,
                      ),
                    ),
                    icon: Icon(Icons.cut_sharp),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber[600],
                        shape: StadiumBorder()),
                    onPressed: () async {
                      final bytes = await image!.readAsBytes();
                      var request =
                          http.MultipartRequest('POST', Uri.parse(urlApi));
                      request.files.add(http.MultipartFile.fromBytes(
                          'file', bytes,
                          filename: image!.path));
                      try {
                        var res = await request.send();
                        var response = await http.Response.fromStream(res);
                        print('${response.body}');
                        // ignore: unused_local_variable
                        String responseimage = response.body;

                        dynamic face = jsonDecode(response.body)['Face'];
                        List<dynamic> listimage =
                            jsonDecode(response.body)['Recommendation'];
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) =>
                                Result(image: listimage, face: face)));
                      } catch (e) {
                        print(e.toString());
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
