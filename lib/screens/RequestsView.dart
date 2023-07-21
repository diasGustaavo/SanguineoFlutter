import 'package:flutter/material.dart';

class RequestsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Requests'),
      ),
      body: Center(
        child: Text('Requests Screen', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
