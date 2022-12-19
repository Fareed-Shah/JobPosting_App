import 'package:app_functionality/screens/form_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<JobPosting> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Current Openings'),
          actions: const [Icon(Icons.search)],
        ),
        body: items.isNotEmpty
            ? ListView.builder(itemCount: items.length, itemBuilder: App_card)
            : const Center(
                child: Text(
                  "No Job's Available",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push<JobPosting>(
                    MaterialPageRoute(builder: (_) => const FormScreen()))
                .then((value) => setState(() {
                      items.add(value!);
                    }));
          },
          child: const Icon(Icons.add),
        ));
  }

  Widget App_card(BuildContext context, int index) => Card(
        margin: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      items[index].title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.00),
                    ),
                    Text(items[index].descrip),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    items.removeAt(index);
                  });
                },
                child: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
      );
}
