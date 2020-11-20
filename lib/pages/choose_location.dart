import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    // simulate network request for userName
    String userName = await Future.delayed(Duration(seconds: 3), () {
      return 'Jeezy';
    });

    // simulate network request to get bio of userName
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'Musician and egg collector';
    });

    print('$userName ~ $bio');
  }

  @override
  void initState() {
    super.initState();
    print('initState function ran');
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Choose a location'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        elevation: 0,
      ),
      body: Text('choose location screen'),
    );
  }
}
