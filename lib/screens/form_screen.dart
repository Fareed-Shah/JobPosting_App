import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController _titleEditingController = TextEditingController();
  TextEditingController _descEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Job'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            left: 15.0, right: 15.0, top: 10.0, bottom: 50.0),
        child: Column(
          children: [
            TextField(
              controller: _titleEditingController,
              decoration: const InputDecoration(hintText: "Title"),
            ),
            TextField(
              controller: _descEditingController,
              decoration: const InputDecoration(hintText: "Description"),
            ),
            const Spacer(),
            ElevatedButton(
                onPressed: () {
                  onSave(context);
                },
                child: const Text('Save'))
          ],
        ),
      ),
    );
  }

  void onSave(BuildContext context) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('Title', _titleEditingController.text);
    sp.setString('descrip', _descEditingController.text);

    Navigator.pop(context,
        JobPosting(_titleEditingController.text, _descEditingController.text));
  }
}

class JobPosting {
  final String title;
  final String descrip;

  JobPosting(this.title, this.descrip);
}
