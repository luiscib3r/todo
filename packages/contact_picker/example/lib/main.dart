import 'dart:developer';
import 'package:contact_picker/contact_picker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ContactPicker _contactPicker = ContactPicker();
  Contact? _contact;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              MaterialButton(
                color: Colors.blue,
                child: const Text('CLICK ME'),
                onPressed: () async {
                  final contact = await _contactPicker.selectContact();
                  log(contact.toString());
                  setState(() {
                    _contact = contact;
                  });
                },
              ),
              Text(
                _contact == null ? 'No contact selected.' : _contact.toString(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
