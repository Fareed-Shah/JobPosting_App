import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController _textEditingController = TextEditingController();

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
              controller: _textEditingController,
              decoration: const InputDecoration(hintText: "Title"),
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

  void onSave(BuildContext context) {
    Navigator.pop(context, _textEditingController.text);
  }
}
