import 'package:app_functionality/custom_widgets/app_card.dart';
import 'package:app_functionality/screens/form_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Current Openings'),
        ),
        body: ListView(
          children: items.map((text) => App_card(text: text)).toList(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push<String>(
                    MaterialPageRoute(builder: (_) => const FormScreen()))
                .then((value) => setState(() {
                      items.add(value!);
                    }));
          },
          child: const Icon(Icons.add),
        ));
  }
}
