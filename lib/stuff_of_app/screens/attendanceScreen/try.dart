// // import 'package:flutter/material.dart';

// // class ContainerItem {
// //   String name;
// //   int value;

// //   ContainerItem({required this.name, required this.value});
// // }

// // class YourScreen extends StatefulWidget {
// //   @override
// //   _YourScreenState createState() => _YourScreenState();
// // }

// // class _YourScreenState extends State<YourScreen> {
// //   List<ContainerItem> containerList = [
// //     ContainerItem(name: 'Container 1', value: 1),
// //     ContainerItem(name: 'Container 2', value: 2),
// //     ContainerItem(name: 'Container 3', value: 3),
// //   ];

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Your App'),
// //       ),
// //       body: ListView.builder(
// //         itemCount: containerList.length,
// //         itemBuilder: (context, index) {
// //           final container = containerList[index];

// //           return Dismissible(
// //             key: Key(container.name),
// //             onDismissed: (direction) {
// //               setState(() {
// //                 containerList.removeAt(index);
// //               });
// //               ScaffoldMessenger.of(context).showSnackBar(
// //                 SnackBar(content: Text('${container.name} deleted')),
// //               );
// //             },
// //             background: Container(color: Colors.red),
// //             child: GestureDetector(
// //               onLongPress: () {
// //                 setState(() {
// //                   container.value--;
// //                 });
// //               },
// //               child: Container(
// //                 width: 200,
// //                 height: 200,
// //                 color: Colors.blue,
// //                 child: Column(
// //                   mainAxisAlignment: MainAxisAlignment.center,
// //                   children: [
// //                     Text(container.name),
// //                     SizedBox(height: 10),
// //                     Text('${container.value}'),
// //                     SizedBox(height: 10),
// //                     IconButton(
// //                       icon: Icon(Icons.add),
// //                       onPressed: () {
// //                         setState(() {
// //                           container.value++;
// //                         });
// //                       },
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';

// class ContainerItem {
//   String name;
//   int value;

//   ContainerItem({required this.name, required this.value});
// }

// class YourScreen extends StatefulWidget {
//   @override
//   _YourScreenState createState() => _YourScreenState();
// }

// class _YourScreenState extends State<YourScreen> {
//   List<ContainerItem> containerList = [
//     ContainerItem(name: 'Container 1', value: 1),
//     ContainerItem(name: 'Container 2', value: 2),
//     ContainerItem(name: 'Container 3', value: 3),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Your App'),
//       ),
//       body: ListView.builder(
//         itemCount: containerList.length,
//         itemBuilder: (context, index) {
//           final container = containerList[index];

//           return Container(
//             width: 200,
//             height: 200,
//             color: Colors.blue,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(container.name),
//                 SizedBox(height: 10),
//                 Text('${container.value}'),
//                 SizedBox(height: 10),
//                 IconButton(
//                   icon: Icon(Icons.delete),
//                   onPressed: () {
//                     setState(() {
//                       containerList.removeAt(index);
//                     });
//                   },
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ContainerItem {
  String name;
  int value;

  ContainerItem({required this.name, required this.value});
}

class YourScreen extends StatefulWidget {
  @override
  _YourScreenState createState() => _YourScreenState();
}

class _YourScreenState extends State<YourScreen> {
  List<ContainerItem> containerList = [];

  String newContainerName = '';
  int newContainerValue = 0;

  void addContainer() {
    if (newContainerName.isNotEmpty) {
      setState(() {
        containerList.add(
            ContainerItem(name: newContainerName, value: newContainerValue));
        newContainerName = '';
        newContainerValue = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your App'),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                newContainerName = value;
              });
            },
            decoration: InputDecoration(
              labelText: 'Container Name',
            ),
          ),
          TextField(
            onChanged: (value) {
              setState(() {
                newContainerValue = int.tryParse(value) ?? 0;
              });
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Container Value',
            ),
          ),
          ElevatedButton(
            onPressed: addContainer,
            child: Text('Add Container'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: containerList.length,
              itemBuilder: (context, index) {
                final container = containerList[index];

                return Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(container.name),
                      SizedBox(height: 10),
                      Text('${container.value}'),
                      SizedBox(height: 10),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          setState(() {
                            containerList.removeAt(index);
                          });
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
