
// // import 'package:flutter/material.dart';
// // import 'package:main/menu.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: HomeScreen(),
// //       debugShowCheckedModeBanner: false,
// //     );
// //   }
// // }

// // class HomeScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: const Color.fromARGB(255, 84, 175, 76),
// //         title: Row(
// //           children: [
// //             Expanded(
// //               child: TextField(
// //                 decoration: InputDecoration(
// //                   hintText: 'Search',
// //                   filled: true,
// //                   fillColor: Colors.white,
// //                   contentPadding: EdgeInsets.symmetric(vertical: 10.0),
// //                   border: OutlineInputBorder(
// //                     borderRadius: BorderRadius.circular(3),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //             SizedBox(width: 10,),
// //             Container(
// //               color: Colors.amber,
// //               height: 50, width: 50,
// //               child: IconButton(
// //                 icon: Icon(Icons.search),
// //                 onPressed: () {
// //                   // Add search functionality here
// //                 },
// //               ),
// //             ),
// //             SizedBox(width: 30,),
// //             Container(
// //               color: Colors.deepOrange,
// //               child: Row(
// //                 children: [
// //                   Text('Close', style: TextStyle(color: Colors.white),),
// //                   IconButton(
// //                     icon: Icon(Icons.close, color: Colors.white,),
// //                     onPressed: () {
// //                       // Add close functionality here
// //                     },
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(8.0),
// //         child: GridView.count(
// //           crossAxisCount: 2,
// //           childAspectRatio: 3 / 1.5, // Adjusted to make the items rectangular
// //           crossAxisSpacing: 50,
// //           mainAxisSpacing: 30,
// //           children: [
// //             MenuButton(
// //               label: 'Maggi / Mee / Bihun / KueyTeow',
// //               onPressed: () {
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(builder: (context) => MenuPage()), // Define MenuPage
// //                 );
// //               },
// //             ),
// //             MenuButton(
// //               label: 'Roti / Tosai / Chapati',
// //               onPressed: () {
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(builder: (context) => MenuPage()), // Define MenuPage
// //                 );
// //               },
// //             ),
// //             MenuButton(
// //               label: 'Roti Naan / Tandoori',
// //               onPressed: () {
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(builder: (context) => MenuPage()), // Define MenuPage
// //                 );
// //               },
// //             ),
// //             MenuButton(
// //               label: 'Asian Cuisine',
// //               onPressed: () {
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(builder: (context) => MenuPage()), // Define MenuPage
// //                 );
// //               },
// //             ),
// //             MenuButton(
// //               label: 'Tomyam',
// //               onPressed: () {
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(builder: (context) => MenuPage()), // Define MenuPage
// //                 );
// //               },
// //             ),
// //             MenuButton(
// //               label: '西方食物',
// //               onPressed: () {
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(builder: (context) => MenuPage()), // Define MenuPage
// //                 );
// //               },
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class MenuButton extends StatelessWidget {
// //   final String label;
// //   final VoidCallback onPressed;

// //   MenuButton({required this.label, required this.onPressed});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Card(
// //       shape: RoundedRectangleBorder(
// //         borderRadius: BorderRadius.circular(10.0),
// //       ),
// //       child: ElevatedButton(
// //         style: ElevatedButton.styleFrom(
// //           backgroundColor: Colors.blue,
// //           padding: EdgeInsets.all(0),
// //           shape: RoundedRectangleBorder(
// //             borderRadius: BorderRadius.circular(10.0),
// //           ),
// //         ),
// //         onPressed: onPressed,
// //         child: Padding(
// //           padding: const EdgeInsets.all(8.0),
// //           child: Text(
// //             label,
// //             textAlign: TextAlign.center, style: TextStyle(color: Colors.white),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }



// import 'package:flutter/material.dart';
// import 'package:main/menu.dart';





// class HomeScreen extends StatefulWidget {
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 84, 175, 76),
//         title: Row(
//           children: [
//             Expanded(
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintText: 'Search',
//                   filled: true,
//                   fillColor: Colors.white,
//                   contentPadding: EdgeInsets.symmetric(vertical: 10.0),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(3),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(width: 10,),
//             Container(
//               color: Colors.lightGreen,
//               height: 45, width: 50,
//               child: IconButton(
//                 icon: Icon(Icons.search,color: Colors.white,),
//                 onPressed: () {
//                   // Add search functionality here
//                 },
//               ),
//             ),
//             SizedBox(width: 30,),
//             Container(
//               color: Colors.deepOrange,
//               child: Row(
//                 children: [
//                   Text('Close', style: TextStyle(color: Colors.white),),
//                   IconButton(
//                     icon: Icon(Icons.close, color: Colors.white,),
//                     onPressed: () {
//                       // Add close functionality here
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: GridView.count(
//           crossAxisCount: 2,
//           childAspectRatio: 1, // Adjusted to make the items square
//           crossAxisSpacing: 50,
//           mainAxisSpacing: 30,
//           children: [
//             MenuButton(
//               label: 'Maggi / Mee / Bihun / KueyTeow',
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => MenuPage()), // Define MenuPage
//                 );
//               },
//             ),
//             MenuButton(
//               label: 'Roti / Tosai / Chapati',
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => MenuPage()), // Define MenuPage
//                 );
//               },
//             ),
//             MenuButton(
//               label: 'Roti Naan / Tandoori',
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => MenuPage()), // Define MenuPage
//                 );
//               },
//             ),
//             MenuButton(
//               label: 'Asian Cuisine',
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => MenuPage()), // Define MenuPage
//                 );
//               },
//             ),
//             MenuButton(
//               label: 'Tomyam',
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => MenuPage()), // Define MenuPage
//                 );
//               },
//             ),
//             MenuButton(
//               label: 'chinese',
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => MenuPage()), // Define MenuPage
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MenuButton extends StatelessWidget {
//   final String label;
//   final VoidCallback onPressed;

//   MenuButton({required this.label, required this.onPressed});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(2),
//         side: BorderSide(color: Colors.black, width: 2.0), // Added border
//       ),
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colors.blue,
//           padding: EdgeInsets.all(0),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(10.0),
//           ),
//         ),
//         onPressed: onPressed,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(
//             label,
//             textAlign: TextAlign.center,
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }






import 'package:flutter/material.dart';
import 'package:main/main.dart';
import 'package:main/menu.dart';



class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchText = "";

  void _performSearch() {
    setState(() {
      _searchText = _searchController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 84, 175, 76),
        title: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search',
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10,),
            Container(
              color: Colors.lightGreen,
              height: 45, width: 50,
              child: IconButton(
                icon: Icon(Icons.search, color: Colors.white),
                onPressed: _performSearch,
              ),
            ),
            SizedBox(width: 30,),
            Container(
              color: Colors.deepOrange,
              child: Row(
                children: [
                  Text('Close', style: TextStyle(color: Colors.white),),
                  IconButton(
                    icon: Icon(Icons.close, color: Colors.white,),
                    onPressed: () {
                      setState(() {
                        _searchController.clear();
                        _searchText = "";
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1,
          crossAxisSpacing: 50,
          mainAxisSpacing: 30,
           children: _getMenuButtons(),
        
        ),
        
      ),
    );
  }

  List<Widget> _getMenuButtons() {
    final List<Map<String, dynamic>> menuItems = [
      {'label': 'Maggi / Mee / Bihun / KueyTeow', 'route': MenuPage()},
      {'label': 'Roti / Tosai / Chapati', 'route': MenuPage()},
      {'label': 'Roti Naan / Tandoori', 'route': MenuPage()},
      {'label': 'Asian Cuisine', 'route': MenuPage()},
      {'label': 'Tomyam', 'route': MenuPage()},
      {'label': 'chinese', 'route': MenuPage()},
    ];

    List<Widget> buttons = [];

    for (var item in menuItems) {
      if (_searchText.isEmpty || item['label'].toLowerCase().contains(_searchText.toLowerCase())) {
        
        
        
        buttons.add(
          MenuButton(
          label: item['label'],
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MenuPage()),
            );
          },
        ));
      }
    }
     buttons.add(
      Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Row(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Text('Back',
                 style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                   minimumSize: Size(100, 60), 
                  shape: RoundedRectangleBorder(
                    
                    borderRadius: BorderRadius.circular(2),
                  ),
                  backgroundColor: Colors.red,
                ),
              ),
              SizedBox(width: 100),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DineInTableScreen()),
                  );
                },
                child: Text('Cancel', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                   minimumSize: Size(100, 60), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    return buttons;
  }
}

class MenuButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  MenuButton({required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
        side: BorderSide(color: Colors.black, width: 2.0),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

