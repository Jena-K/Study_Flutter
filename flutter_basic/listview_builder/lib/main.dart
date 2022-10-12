// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: ListViewPage(),
//     );
//   }
// }

// class ListViewPage extends StatefulWidget {
//   const ListViewPage({Key? key}) : super(key: key);

//   @override
//   State<ListViewPage> createState() => _ListViewPageState();
// }

// class _ListViewPageState extends State<ListViewPage> {
//   var titleList = [
//     'Dentist',
//     'Pharmacist',
//     'Schoold teacher',
//     'It manager',
//     'Account',
//     'Lawyer',
//     'Hairdresser',
//     'Physician',
//     'Web developer',
//     'Medical Secretary'
//   ];

//   var imageList = [
//     'image/1.png',
//     'image/2.png',
//     'image/3.png',
//     'image/4.png',
//     'image/5.png',
//     'image/6.png',
//     'image/7.png',
//     'image/8.png',
//     'image/9.png',
//     'image/10.png',
//   ];

//   var description = [
//     '1. There are different types of careers you can pursue in your life. Which one will it be?',
//     '2. There are different types of careers you can pursue in your life. Which one will it be?',
//     '3. There are different types of careers you can pursue in your life. Which one will it be?',
//     '4. There are different types of careers you can pursue in your life. Which one will it be?',
//     '5. There are different types of careers you can pursue in your life. Which one will it be?',
//     '6. There are different types of careers you can pursue in your life. Which one will it be?',
//     '7. There are different types of careers you can pursue in your life. Which one will it be?',
//     '8. There are different types of careers you can pursue in your life. Which one will it be?',
//     '9. There are different types of careers you can pursue in your life. Which one will it be?',
//     '10. There are different types of careers you can pursue in your life. Which one will it be?',
//   ];

//   void showPopup(ontext, title, image, description) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return Dialog(
//           child: Container(
//             width: MediaQuery.of(context).size.width * 0.7,
//             height: 380,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               color: Colors.white,
//             ),
//             child: Column(
//               children: [
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(10),
//                   child: Image.asset(
//                     image,
//                     width: 150,
//                     height: 150,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   title,
//                   style: const TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.grey,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(10),
//                   child: Text(
//                     description,
//                     maxLines: 3,
//                     style: TextStyle(
//                       fontSize: 15,
//                       color: Colors.grey[500],
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//                 ElevatedButton.icon(
//                     onPressed: () {
//                       Navigator.pop(context);
//                     },
//                     icon: const Icon(Icons.close),
//                     label: const Text('close'))
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width * 0.6;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'ListView',
//           style: TextStyle(
//             color: Colors.grey,
//           ),
//         ),
//         backgroundColor: Colors.white,
//         elevation: 0,
//       ),
//       body: ListView.builder(
//         itemCount: titleList.length,
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             onTap: () {
//               showPopup(
//                 context,
//                 titleList[index],
//                 imageList[index],
//                 description[index],
//               );
//               debugPrint(titleList[index]);
//             },
//             child: Card(
//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 100,
//                     height: 100,
//                     child: Image.asset(
//                       imageList[index],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(10),
//                     child: Column(
//                       children: [
//                         Text(
//                           titleList[index],
//                           style: TextStyle(
//                             fontSize: 22.0,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.grey,
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 10,
//                         ),
//                         SizedBox(
//                           width: width,
//                           child: Text(
//                             description[index],
//                             style: TextStyle(
//                               fontSize: 15,
//                               color: Colors.grey[500],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: ListViewPage(),
    );
  }
}

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  var titleList = [
    'Dentist',
    'Pharmacist',
    'Schoold teacher',
    'It manager',
    'Account',
    'Lawyer',
    'Hairdresser',
    'Physician',
    'Web developer',
    'Medical Secretary'
  ];

  var imageList = [
    'image/1.png',
    'image/2.png',
    'image/3.png',
    'image/4.png',
    'image/5.png',
    'image/6.png',
    'image/7.png',
    'image/8.png',
    'image/9.png',
    'image/10.png',
  ];

  var description = [
    '1. There are different types of careers you can pursue in your life. Which one will it be?',
    '2. There are different types of careers you can pursue in your life. Which one will it be?',
    '3. There are different types of careers you can pursue in your life. Which one will it be?',
    '4. There are different types of careers you can pursue in your life. Which one will it be?',
    '5. There are different types of careers you can pursue in your life. Which one will it be?',
    '6. There are different types of careers you can pursue in your life. Which one will it be?',
    '7. There are different types of careers you can pursue in your life. Which one will it be?',
    '8. There are different types of careers you can pursue in your life. Which one will it be?',
    '9. There are different types of careers you can pursue in your life. Which one will it be?',
    '10. There are different types of careers you can pursue in your life. Which one will it be?',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
      ),
      body: ListView.builder(
        itemCount: description.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showPopup(
                context,
                titleList[index],
                imageList[index],
                description[index],
              );
            },
            child: Card(
              child: Row(
                children: [
                  ClipRRect(
                    child: Image.asset(
                      imageList[index],
                      width: 100,
                      height: 100,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          titleList[index],
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          child: Text(description[index]),
                          width: width,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void showPopup(context, title, image, description) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            width: MediaQuery.of(context).size.width * 0.7,
            height: 330,
            child: Center(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      image,
                      width: 150,
                      height: 150,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      description,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close),
                    label: const Text('close'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
