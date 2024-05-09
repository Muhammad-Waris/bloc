import 'package:bloc_test/bloc/counter/counter_bloc.dart';

import 'package:flutter/material.dart';

import 'ui/counter_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const CounterScreen(),
      ),
    );
  }
}

// class EquatableTesting extends StatefulWidget {
//   const EquatableTesting({super.key});

//   @override
//   State<EquatableTesting> createState() => _EquatableTestingState();
// }

// class _EquatableTestingState extends State<EquatableTesting> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//           child: const Icon(Icons.elderly),
//           onPressed: () {
//             Insaan insan = const Insaan(name: "w", age: 1);
//             Insaan insan2 = const Insaan(name: "w", age: 1);
//             if (kDebugMode) {
//               print(insan2 == insan);
//             }
//             if (kDebugMode) {
//               print(insan2 == insan2);
//             }
//             if (kDebugMode) {
//               print(insan.hashCode.toString());
//             }
//             if (kDebugMode) {
//               print(insan2.hashCode.toString());
//             }
//           }),
//     );
//   }
// }

// class Insaan extends Equatable {
//   final String name;
//   final int age;

//   const Insaan({required this.name, required this.age});

//   @override
//   List<Object?> get props => [name, age];
// }
