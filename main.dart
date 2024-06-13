import 'package:flutter/material.dart';
import 'package:main/second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DineInTableScreen(),
    );
  }
}

class DineInTableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(child: Text('Amira Restaurant',
        style: TextStyle(color: Colors.orange),)),
      ),
      body: Column(
        children: [
          Row(
            children: [
              // PopupMenuButton(
              //   icon: Icon(Icons.menu, color: Colors.black),
              //   onSelected: (value) {
                  
              //     print("Selected: $value");
              //   },
              //   itemBuilder: (BuildContext context) {
              //     return [
              //       PopupMenuItem(
              //         value: 'Home',
              //         child: Row(
              //           children: [
              //             Icon(Icons.home, color: Colors.orange),
              //             SizedBox(width: 10),
              //             Text('Home'),
              //           ],
              //         ),
              //       ),
              //       PopupMenuItem(
              //         value: 'Menu',
              //         child: Row(
              //           children: [
              //             Icon(Icons.restaurant_menu, color: Colors.green),
              //             SizedBox(width: 10),
              //             Text('Menu'),
              //           ],
              //         ),
              //       ),
              //       PopupMenuItem(
              //         value: 'Search',
              //         child: Row(
              //           children: [
              //             Icon(Icons.search, color: Colors.yellow),
              //             SizedBox(width: 10),
              //             Text('Search'),
              //           ],
              //         ),
              //       ),
              //     ];
              //   },
              // ),
              Spacer(),
              Container(
                color: Colors.red,
                child: IconButton(
                  icon: Icon(Icons.home),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
              Container(
                color: Colors.green,
                child: IconButton(
                  icon: Icon(Icons.category),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
              Container(
                color: Colors.orange,
                child: IconButton(
                  icon: Icon(Icons.restaurant_menu),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
              Container(
                color: Colors.deepPurpleAccent,
                child: IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Text(
            'Dine-in-Table',
            style: TextStyle(fontSize: 40, 
            fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3/1.5
              ),
              itemCount: 30,
              //  itemBuilder: (context, index) {
              //   return TableCard(tableNumber: index + 1);
              
              //  },
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TableScreen(tableNumber: index + 1),
                      ),
                    );
                  },
                  child: TableCard(tableNumber: index + 1),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TableCard extends StatelessWidget {
  final int tableNumber;

  TableCard({required this.tableNumber});

  @override
  Widget build(BuildContext context) {
    return Card(
      
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 2),
        borderRadius: 
      BorderRadius.circular(2)),
      color: Colors.blue,
      child: Center(
        child: Text(
          'T-${tableNumber.toString().padLeft(2, '0')}',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
  

  class TableScreen extends StatelessWidget {
  final int tableNumber;

  TableScreen({required this.tableNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:HomeScreen() ,
    );
  }
}