import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  final Color;
  NextPage({super.key, required this.Color});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text(
          'Next Page',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: widget.Color,
      ),
      body: Center(
          child: Text(
        'Hello!',
        style: TextStyle(color: const Color.fromARGB(255, 137, 87, 146), fontSize: 20),
      )),
    );
  }
}

// class MyWidget extends StatelessWidget {
//   MyWidget({super.key, required this.color});
//   Color color;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: IconThemeData(
//           color: Colors.white, //change your color here
//         ),
//         title: Text(
//           'Next Page',
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: color,
//       ),
//       body: Center(
//           child: Text(
//         'Hello!',
//         style: TextStyle(
//             color: const Color.fromARGB(255, 137, 87, 146), fontSize: 20),
//       )),
//     );
//   }
// }
