import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Transferências'),
          ),
          floatingActionButton: const FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: teste,
          ),
          body: Column(
            children: const [
              Card(
                child: ListTile(
                  leading: Icon(Icons.monetization_on),
                  title: Text('100.00'),
                  subtitle: Text('1000'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.monetization_on),
                  title: Text('250.00'),
                  subtitle: Text('1000'),
                ),
              ),
            ],
          ),
        ),
      ),
    );

void teste() {}
