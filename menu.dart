
import 'package:flutter/material.dart';
import 'package:main/addit.dart';
import 'package:main/main.dart';
import 'package:main/order.dart';
import 'package:main/second.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

   List<Map<String, dynamic>> orderList = [];

  void addItemToOrder(Map<String, dynamic> item) {
    setState(() {
      orderList.add(item);
    });
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Ghgh(orderList: orderList),
      ),
    );}
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
            SizedBox(width: 10),
            Container(
              color: Colors.lightGreen,
              height: 50,
              width: 50,
              child: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
        
                },
              ),
            ),
            SizedBox(width: 30),
            Container(
              color: Colors.deepOrange,
              child: Row(
                children: [
                  Text(
                    'Close',
                    style: TextStyle(color: Colors.white),
                  ),
                  IconButton(
                    icon: Icon(Icons.close, color: Colors.white),
                    onPressed: () {
                      Navigator.push
                      (context,MaterialPageRoute(builder:(context)=>DineInTableScreen()));
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
          childAspectRatio: 2 / 1.5, 
          crossAxisSpacing: 50,
          mainAxisSpacing: 30,
          children: [
            MenuButton(
              label: 'Bihun Goreng',
              price: '5.00',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddItem(itemName: 'Bihun Goreng', 
                    itemPrice: '5.00',
                    addItemToOrder: addItemToOrder,),
                  ),
                );
              },
            ),
            MenuButton(
              label: 'Maggi Goreng',
              price: '6.00',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddItem(itemName: 'Maggi Goreng',
                     itemPrice: '6.00',
                     addItemToOrder: addItemToOrder,),
                  ),
                );
              },
            ),
            MenuButton(
              label: 'Kuey Teow',
              price: '5.50',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddItem(itemName: 'Kuey Teow', 
                    itemPrice: '5.50',addItemToOrder: addItemToOrder,),
                  ),
                );
              },
            ),
            MenuButton(
              label: 'Maggi Goreng Ayam',
              price: '7.00',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddItem(
                      itemName: 'Maggi Goreng Ayam',
                       itemPrice: '7.00',
                       addItemToOrder: addItemToOrder,),
                  ),
                );
              },
            ),
            MenuButton(
              label: 'Mee Goreng Ayam',
              price: '6.50',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddItem(
                      itemName: 'Mee Goreng Ayam',
                       itemPrice: '6.50',
                       addItemToOrder: addItemToOrder,),
                  ),
                );
              },
            ),
            MenuButton(
              label: 'Maggi/Mee Daging',
              price: '8.00',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddItem(
                      itemName: 'Maggi/Mee Daging', itemPrice: '8.00',
                      addItemToOrder: addItemToOrder,),
                  ),
                );
              },
            ),
            MenuButton(
              label: 'Indoo Mee',
              price: '5.00',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddItem(
                      itemName: 'Indoo Mee', itemPrice: '5.00',
                      addItemToOrder: addItemToOrder,),
                  ),
                );
              },
            ),
            MenuButton(
              label: 'Soup',
              price: '4.50',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddItem(itemName: 'Soup',
                     itemPrice: '4.50',
                    addItemToOrder: addItemToOrder,),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                 ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen()));
                          },
                          child: Text('Back',
                          style: TextStyle(color: Colors.white)),
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(100, 60), 
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2)
                            ),
                        
                          backgroundColor: Colors.red
                          ),
                        ),SizedBox(width: 80,),
                         ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>DineInTableScreen()));
                          },
                          child: Text('Cancel',
                          style: TextStyle(color: Colors.white)),
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(100, 60), 
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2)
                            ),
                        
                          backgroundColor: Colors.red
                          ),
                        ),
                ],
              ),
            )
          ],
        ),
      ),
    );  
  }
}

class MenuButton extends StatelessWidget {
  final String label;
  final String price;
  final VoidCallback onPressed;

  MenuButton({required this.label, required this.price, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 2),
        borderRadius: BorderRadius.circular(2),
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