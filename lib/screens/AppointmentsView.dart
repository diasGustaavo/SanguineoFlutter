import 'package:flutter/material.dart';

class AppointmentsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointments'),
      ),
      body: Center(
        child: Text('Appointments Screen', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
