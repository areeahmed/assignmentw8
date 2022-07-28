import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserMessageScreen extends StatefulWidget {
  UserMessageScreen({Key? key}) : super(key: key);

  @override
  State<UserMessageScreen> createState() => _UserMessageScreenState();
}

class _UserMessageScreenState extends State<UserMessageScreen> {
  final _formKeyName = GlobalKey<FormState>();
  final _formKeyMessage = GlobalKey<FormState>();
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  final TextEditingController _myControlerName = TextEditingController();
  final TextEditingController _myControlerMessage = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.grey[100],
        title: Text(
          'Messages',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          padding: EdgeInsets.only(top: 20, right: 8, left: 8, bottom: 8),
          child: Center(
            child: Column(
              children: [
                //! Messages List View
                MessageListView(),
                //! TextInput ( Message )
                MessageTextInputWidget(),
                //! TextInput ( Name )
                Row(
                  children: [
                    MessageSenderName(),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)),
                      child: InkWell(
                        onTap: () async {
                          if (_formKeyName.currentState!.validate() == true &&
                              _formKeyMessage.currentState!.validate() ==
                                  true) {
                            debugPrint('form validated');
                            await addMessageAndNameToTheDB(
                              name: _myControlerName.text,
                              message: _myControlerMessage.text,
                            ).then((value) => print(value.path));
                          } else {
                            debugPrint('form not validated');
                          }
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.green[400],
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(
                            Icons.send,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //! Send Button
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<DocumentReference> addMessageAndNameToTheDB(
      {required String name, required String message}) async {
    DocumentReference _doc = await _firebaseFirestore.collection('users').add({
      "name": "$name",
      "message": "$message",
    });
    return _doc;
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getDataFromDB() async {
    return await _firebaseFirestore.collection('users').get();
  }

  Widget MessageListView() {
    return Container(
      height: 500,
      padding: EdgeInsets.only(top: 50, left: 10, right: 10),
      child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: _firebaseFirestore.collection('users').snapshots(),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('err ${snapshot.error}');
          } else if (snapshot.data == null) {
            return Text('No data');
          }
          snapshot.data!.docs.first;
          return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 118,
                    width: 322,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.greenAccent, width: 3),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[100],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            snapshot.data!.docs[index]
                                .data()["name"]
                                .toString(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            snapshot.data!.docs[index]
                                .data()["message"]
                                .toString(),
                            style: TextStyle(
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              });
        }),
      ),
    );
  }

  Widget MessageTextInputWidget() {
    return Container(
      color: Colors.grey[200],
      margin: EdgeInsets.all(5),
      child: Form(
        key: _formKeyMessage,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if (value == null || value == '') {
                  return 'required';
                }
                return null;
              },
              controller: _myControlerMessage,
              decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.only(
                    top: 118,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: '   Message'),
            ),
          ],
        ),
      ),
    );
  }

  Widget MessageSenderName() {
    return Container(
      width: 303,
      color: Colors.grey[200],
      margin: EdgeInsets.only(right: 10),
      child: Form(
        key: _formKeyName,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if (value == null || value == '') {
                  return 'required';
                }
                return null;
              },
              controller: _myControlerName,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Name'),
            ),
          ],
        ),
      ),
    );
  }
}
