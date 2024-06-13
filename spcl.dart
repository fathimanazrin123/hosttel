import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8.0),
      children: [
        NotesButton(label: 'Take-Away (RM 0.30)', 
        color: Colors.red),
        NotesButton(label: 'Extra Egg (RM 1.00)', 
        color: Colors.red),
        NotesButton(label: 'Extra Rice (RM 0.50)',
         color: Colors.red),
        NotesButton(label: 'Extra Spicy'),
        NotesButton(label: 'Less Spicy'),
        NotesButton(label: 'No Egg (RM -0.50)', 
        color: Colors.blue),
        NotesButton(label: 'No Meat'),
        NotesButton(label: 'No Seafood'),
        NotesButton(label: 'No Vege (RM -0.20)',
         color: Colors.blue),
      ],
    );
  }
}

class NotesButton extends StatelessWidget {
  final String label;
  final Color? color;

  NotesButton({required this.label, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
      
          minimumSize: Size(double.infinity, 50),
        ),
        onPressed: () {},
        child: Text(label),
      ),
    );
  }
}

