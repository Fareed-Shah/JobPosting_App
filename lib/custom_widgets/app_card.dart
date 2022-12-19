import 'package:flutter/material.dart';

class App_card extends StatelessWidget {
  final String text;
  const App_card({required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(child: Text(text)),
            GestureDetector(
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
}
