import 'package:flutter/material.dart';

class Ghgh extends StatefulWidget {
  final List<Map<String, dynamic>> orderList;

  Ghgh({required this.orderList});

  @override
  State<Ghgh> createState() => _GhghState();
}

class _GhghState extends State<Ghgh> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
        title: Text('Amira Restaurant'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
          
            },
          ),
          IconButton(
            icon: Icon(Icons.restaurant),
            onPressed: () {
        
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
        
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('TABLE: T-21'),
                DropdownButton<int>(
                  value: 1,
                  items: [
                    DropdownMenuItem<int>(
                      value: 1,
                      child: Text('PAX: 1'),
                    ),
                
                  ],
                   onChanged: (int? newValue) {
            
                   },
                ),
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: Text('ORDER'),
                  style: ElevatedButton.styleFrom(
                  
                   backgroundColor: Colors.green
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order List'),
                ElevatedButton.icon(
                  onPressed: () {
          
                  },
                  icon: Icon(Icons.add),
                  label: Text('Add Item'),
                  style: ElevatedButton.styleFrom(
            
                   backgroundColor: Colors.blue
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: widget.orderList.length,
                itemBuilder: (context, index) {
                  final item = widget.orderList[index];
                  
                  return ListTile(
                    title: Text(item['itemName']),
                   subtitle: Text('Qty: ${item['quantity']} - Note: ${item['specialNote']}'),
                   trailing: Text('\$${item['price']}'),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                 Navigator.push(context,MaterialPageRoute(builder: (context)=>Ghgh(orderList: [],)));
                  },
                  child: Text('Back'),
                  style: ElevatedButton.styleFrom(
                
                    backgroundColor: Colors.red
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                  
                  },
                  child: Text('ORDER'),
                  style: ElevatedButton.styleFrom(
                   
                   backgroundColor: Colors.green
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Widget buildOrderItem(
  // String itemName, 
  // String quantity, 
  // String price) {
  //   return ListTile(
  //     leading: Checkbox(
  //       value: true,
  //       onChanged: (bool? value) {
  
  //       },
  //     ),
  //     title: Text(itemName),
  //     trailing: Row(
  //       mainAxisSize: MainAxisSize.min,
  //       children: [
  //         Container(
  //           padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
  //           color: Colors.orange,
  //           child: Text(
  //             quantity,
  //             style: TextStyle(color: Colors.white),
  //           ),
  //         ),
  //         SizedBox(width: 10),
  //         Container(
  //           padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
  //           color: Colors.green,
  //           child: Text(
  //             price,
  //             style: TextStyle(color: Colors.white),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
    
  // }
}



    