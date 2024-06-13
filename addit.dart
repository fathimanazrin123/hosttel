// import 'package:flutter/material.dart';

// class AddItem extends StatefulWidget {
//   final String itemPrice;
//   final String itemName;

//   const AddItem({super.key, required this.itemName, required this.itemPrice});

//   @override
//   State<AddItem> createState() => _AddItemState();
// }

// class _AddItemState extends State<AddItem> {
//   int _itemCount = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
    
//       body: Container(
//         color: Colors.green,
//         height: 600,width: 1000,
//         child: Container(
        
                
//           decoration: BoxDecoration(
//             color: Colors.white,
//             border: Border.all(
//               color: Colors.black,
//               width: 2.0,
//             ),
//           ),
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(right: 150, top: 30),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('Item: ${widget.itemName}', style: TextStyle(fontSize: 15)),
//                     const SizedBox(height: 10),
//                     ListTile(
//                       trailing: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: <Widget>[
//                           Text('Quantity'),
//                           _itemCount != 0
//                               ? Container(
//                                   color: Colors.red,
//                                   child: IconButton(
//                                     icon: Icon(Icons.remove),
//                                     color: Colors.white,
//                                     onPressed: () => setState(() => _itemCount--),
//                                   ),
//                                 )
//                               : Container(),
//                           Text(_itemCount.toString()),
                        
                        
                        
//                           Container(
//                             color: Colors.green,
//                             child: IconButton(
//                               icon: Icon(Icons.add),
//                               color: Colors.white,
//                               onPressed: () => setState(() => _itemCount++),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
                
//                     Row(children: [
                      
//                       Text('Special Note',style: TextStyle(),),
//                     Flexible(child: TextFormField(
                
//                                   decoration: InputDecoration(
//                            filled: true,
              
//               border: OutlineInputBorder(
//                 borderSide: BorderSide.none,
//                 borderRadius: BorderRadius.circular(5)
//               ),
//             ),
                
//                     ))
                    
//                     ],),
                  
//                     Text('Price: \$${widget.itemPrice}', style: TextStyle(fontSize: 10)),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }





// import 'package:flutter/material.dart';




// class AddItem extends StatefulWidget {
//     final String itemPrice; final String itemName;

//     AddItem({super.key, required this.itemName, required this.itemPrice});
   
//   @override
//   _OrderScreenState createState() => _OrderScreenState();
// }

// class _OrderScreenState extends State<AddItem> {
//   int quantity = 2;
//   String specialNote = "No Meat";
//   double price = 4.50;
//   double gst = 0.00;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
     
//       body: Container(
//         height: 800,width: 500,
//         color: Colors.green,
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Container(
//             color: Colors.white,
//             height: 100,width: 70,
//             child: Column(
//               children: [
//                 Row(
//                   children: [
                    
                    
//                          Text('Item: ${widget.itemName}', style: TextStyle(fontSize: 15)),
//                    // Expanded(child: Text(, style: TextStyle(fontWeight: FontWeight.bold))),
//                   ],
//                 ),
//                 SizedBox(height: 16),
//                 Row(
//                   children: [
//                     Expanded(child: Text('Quantity')),
//                     IconButton(
//                       icon: Icon(Icons.remove),
//                       onPressed: () {
//                         setState(() {
//                           if (quantity > 0) quantity--;
//                         });
//                       },
//                     ),
//                     Text('Qty: $quantity'),
//                     IconButton(
//                       icon: Icon(Icons.add),
//                       onPressed: () {
//                         setState(() {
//                           quantity++;
//                         });
//                       },
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 16),
//                 Row(
//                   children: [
//                     Expanded(child: Text('Special Note')),
//                     Expanded(child: Text(specialNote)),
//                     IconButton(
//                       icon: Icon(Icons.edit),
//                       onPressed: () {
//                         // Logic to edit special note
//                       },
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 16),
//                 Row(
//                   children: [
//                      Text('Price: \$${widget.itemPrice}', style: TextStyle(fontSize: 20)),
//                   ],
//                 ),
//                 SizedBox(height: 16),
//                 Row(
//                   children: [
//                     Expanded(child: Text('GST (RM)')),
//                     Expanded(child: Text(gst.toString())),
//                   ],
//                 ),
//                 SizedBox(height: 32),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {},
//                       child: Text('Back'),
//                       style: ElevatedButton.styleFrom(
//                       //  primary: Colors.red,
//                       ),
//                     ),
//                     ElevatedButton(
//                       onPressed: () {},
//                       child: Text('Next'),
//                       style: ElevatedButton.styleFrom(
//                       //  primary: Colors.green,
//                       ),
//                     ),
//                     ElevatedButton(
//                       onPressed: () {},
//                       child: Text('OK'),
//                       style: ElevatedButton.styleFrom(
//                        // primary: Colors.blue,
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }







import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:main/menu.dart';
import 'package:main/spcl.dart';

class AddItem extends StatefulWidget {
    final String itemPrice;
     final String itemName;
     final Function(Map<String, dynamic>) addItemToOrder;
      

      AddItem({
    required this.itemName,
    required this.itemPrice,
    required this.addItemToOrder,
  });
  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
    int quantity = 1;
   String specialNote = "";
   double price = 4.50;
  double gst = 0.00;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: Stack(
  children: [
    Container(
      color: Colors.green,
      height: 800,width: 400,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text('Add Item',
        style: TextStyle(
         color: Colors.white,fontSize: 20
        ),),
      )
    ),
    Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Container(
        color: Colors.white,
        height: 400,width: 400,
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 80,left: 50,right: 40),
      child: Container(
        height: 350,width: 350,
         decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
            ),
              child: Column(
              children: [
                Row(
                  children: [
                  Text('Item ${widget.itemName}', 
               style: TextStyle(fontSize: 15,)),
                   // Expanded(child: Text(, style: TextStyle(fontWeight: FontWeight.bold))),
                  ],
                ),
                SizedBox(height: 16),Divider(),
                Row(
                  children: [
                    Expanded(child: Text('Quantity')),
                    Container(
                      color: Colors.red,
                      height: 40,width: 40,
                      child: IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          setState(() {
                            if (quantity > 0) quantity--;
                          });
                        },
                      ),
                    ),
                    Text('Qty: $quantity'),
                    Container(
                      color: Colors.green,
                      child: IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            quantity++;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),Divider(),
                TextField(
                              decoration: InputDecoration(labelText: 'Special Note'),
                              onChanged: (value) {
                                specialNote = value;
                              },
                            ),
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Notes()));
                
                    },
                  ),
                SizedBox(height: 16),Divider(),
                Row(
                  children: [
                     Text('Price: \$${widget.itemPrice}',
                      style: TextStyle(fontSize: 20)),
                  ],
                ),
                SizedBox(height: 16),Divider(),
                Row(
                  children: [
                    Expanded(child: Text('GST (RM)')),
                    Expanded(child: Text(gst.toString())),
                  ],
                ),
              
              ],
      ),
    )
    ),
      Padding(
        padding: const EdgeInsets.only(top: 480),
        child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>MenuPage()));
                        },
                        child: Text('Back',
                        style: TextStyle(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2)
                          ),
          
                        backgroundColor: Colors.red
                        ),
                      ),
                       Center(
              child: ElevatedButton(
                onPressed: () {
                  widget.addItemToOrder({
                    'itemName': widget.itemName,
                    'quantity': quantity,
                    'price': widget.itemPrice,
                    'specialNote': specialNote,
                  });
                },
                child: Text('Next'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
              ),
            ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('OK',style: TextStyle(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                           shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2)
                          ),
                        
                         backgroundColor: Colors.blue
                        ),
                      ),
                    ],
                  ),
      )
  ],
)

    );
  }
}