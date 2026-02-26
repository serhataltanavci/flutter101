import 'package:flutter/material.dart';
import 'package:flutter101/home.dart';

void main() {
  runApp(const MaterialApp(
    // home:Home()
        home:Sandbox()

)     
  );
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const  Text("Sandboxing"),
        backgroundColor: Colors.grey,

      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Container(
            height: 100,
            color: Colors.red,
            child: const Text("one")
          ),   Container(
            height: 200,
            color: Colors.blue,
            child: const Text("two")
          ),   Container(
            height: 300,
            color: Colors.green,
            child: const Text("three")
          )
        ],
      )
    );
  }
}

// class Sandbox extends StatelessWidget {
//   const Sandbox({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         title:const  Text("Sandboxing"),
//         backgroundColor: Colors.grey,

//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         mainAxisAlignment: MainAxisAlignment.center,

//         children: [
//           Container(
//             width: 100,
//             color: Colors.red,
//             child: const Text("one")
//           ),   Container(
//             width: 200,
//             color: Colors.blue,
//             child: const Text("two")
//           ),   Container(
//             width: 300,
//             color: Colors.green,
//             child: const Text("three")
//           ),
//              Container(
//             width: 400,
//             color: Colors.grey,
//             child: const Text("four")
//           )
//         ],
//       )
//     );
//   }
// }