// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:project_application_1/utils/dialog_button.dart';

class DialogueBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogueBox({
    super.key,
    required this.controller,
    required this.onCancel,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.purpleAccent[100],
      content: SizedBox(
        height: 120,
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new task..',
              ),
            ),
            Spacer(),
            Row(
              children: [
                DialogButton(text: 'Save', onPressed: onSave),
                Spacer(),
                DialogButton(text: 'Delete', onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
