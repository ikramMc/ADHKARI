import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class EveningAdhakar extends StatefulWidget {
  const EveningAdhakar({Key? key}) : super(key: key);


  @override
  _EveningAdhakarState createState() => _EveningAdhakarState();
}

class _EveningAdhakarState extends State<EveningAdhakar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("اذكاري المسائية"),
      ),

    );
  }
}
