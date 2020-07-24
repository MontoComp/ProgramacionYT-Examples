import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class BottomSheetPage extends StatefulWidget {
  BottomSheetPage({Key key}) : super(key: key);

  @override
  _BottomSheetState createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheetPage> {
  File _image;

  Future getImagepicker() async {
    
    final image = await ImagePicker().getImage(source: ImageSource.camera);

    setState(() {
      _image = File(image.path);
    }); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomSheet"),
      ),
      body: Center(
        child: RaisedButton(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "My bottomSheet",
            style: TextStyle(fontSize: 25.0),
          ),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Text(
                                "Add Item",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                color: Colors.transparent,
                                child: _image == null
                                    ? Icon(Icons.person,color: Colors.black,)
                                    : Image.file(_image,scale: 25.0,),
                              ),
                            ],
                          ),
                          ListTile(
                            title: Text("Photos",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),
                            ),
                            leading: Icon(
                              Icons.image,
                              color: Colors.orange,
                            ),
                            trailing: Icon(
                              Icons.arrow_right,
                            ),
                            onTap: (){

                            },
                          ),
                          ListTile(
                            title: Text(
                              "Camera",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            leading: Icon(
                              Icons.camera_alt,
                              color: Color(0xff00cdab),
                            ),
                            trailing: Icon(
                              Icons.arrow_right,
                            ),
                            onTap: () {
                              getImagepicker();
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: Text(
                              "Notes",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            leading: Icon(
                              Icons.note_add,
                              color: Color(0xff00b402),
                            ),
                            trailing: Icon(
                              Icons.arrow_right,
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Files",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            leading: Icon(
                              Icons.assignment,
                              color: Color(0xff001993),
                            ),
                            trailing: Icon(
                              Icons.arrow_right,
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Documents",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            leading: Icon(
                              Icons.create_new_folder,
                              color: Color(0xff47006b),
                            ),
                            trailing: Icon(
                              Icons.arrow_right,
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Session",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            leading: Icon(
                              Icons.exit_to_app,
                              color: Color(0xffd20800),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}
