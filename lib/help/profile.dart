// /// profiles and accounts 

// class AccountsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff4537DD),
//       appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           automaticallyImplyLeading: false,
//           actions: [
//             IconButton(
//                 onPressed: () {},
//                 icon: Icon(
//                   Icons.settings,
//                   size: 36,
//                   color: Colors.white10,
//                 ))
//           ]),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Center(
//                 child: Container(
//               width: 122,
//               height: 152,
//               child: CircleAvatar(
//                 backgroundColor: Colors.white,
//                 child: Center(
//                   child: Text(
//                     'Auto ',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//             )),
//             Container(
//               width: 172,
//               height: 33,
//               decoration: BoxDecoration(
//                   color: Colors.white, borderRadius: BorderRadius.circular(25)),
//               child: Center(
//                   child: Text(
//                 "Ali Abbas",
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
//               )),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Text(
//               "0",
//               style: TextStyle(color: Colors.white),
//             ),
//             Text(
//               "My Wishlist",
//               style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 16),
//             ),
//             SizedBox(
//               height: 16,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: Container(
//                 width: double.infinity,
//                 height: 448,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(70.0),
//                     topRight: Radius.circular(70.0),
//                   ),
//                 ),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 22.0,top: 15),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           IconButton(
//                               onPressed: () {
//                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>paymentPage ()));
//                               }, icon: Icon(Icons.payment)),
//                           SizedBox(
//                           width: 12,
//                           ),
//                           IconButton(
//                               onPressed: () {}, icon: Icon(Icons.message)),
//                                SizedBox(
//                           width: 12,
//                           ),
//                           IconButton(
//                               onPressed: () {}, icon: Icon(Icons.payment)),
//                                SizedBox(
//                           width: 12,
//                           ),
//                           IconButton(
//                               onPressed: () {}, icon: Icon(Icons.reset_tv_rounded)),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }