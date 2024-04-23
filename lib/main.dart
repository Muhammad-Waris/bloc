import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const EquatableTesting(),
    );
  }
}

class EquatableTesting extends StatefulWidget {
  const EquatableTesting({super.key});

  @override
  State<EquatableTesting> createState() => _EquatableTestingState();
}

class _EquatableTestingState extends State<EquatableTesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.elderly),
          onPressed: () {
            Insaan insan = const Insaan(name: "w", age: 1);
            Insaan insan2 = const Insaan(name: "w", age: 1);
            if (kDebugMode) {
              print(insan2 == insan);
            }
            if (kDebugMode) {
              print(insan2 == insan2);
            }
            if (kDebugMode) {
              print(insan.hashCode.toString());
            }
            if (kDebugMode) {
              print(insan2.hashCode.toString());
            }
          }),
    );
  }
}

class Insaan extends Equatable {
  final String name;
  final int age;

  const Insaan({required this.name, required this.age});

  @override
  List<Object?> get props => [name, age];
}
