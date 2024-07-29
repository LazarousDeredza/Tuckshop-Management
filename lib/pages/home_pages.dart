// import 'package:firedart/firestore/firestore.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:tuckshopmanager/utils/appbar_actions_menu.dart';
// import 'package:tuckshopmanager/widget/drawer_menu_widget.dart';

// int shelf = 0;
// int supplier = 0;
// int customer = 0;
// int totalSales = 0;
// int numberOfPurchase = 0;
// int totalPurchaseAmount = 0;
// int totalSellAmount = 0;
// int totalProfitAmount = 0;

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePage();
// }

// class _HomePage extends State<HomePage> {
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     _getAllData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: const IconThemeData(color: Colors.white),
//         flexibleSpace: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.centerLeft,
//               end: Alignment.centerRight,
//               colors: <Color>[Colors.purple, Colors.blue],
//             ),
//           ),
//         ),
//         actions: AppbarActionMenu.actionFun(context),
//       ),
//       body: Column(children: [
//         SizedBox(
//           width: MediaQuery.of(context).size.width,
//           child: Container(
//             alignment: Alignment.center,
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.centerLeft,
//                 end: Alignment.centerRight,
//                 colors: <Color>[Colors.purple, Colors.blue],
//               ),
//             ),
//             padding: const EdgeInsets.only(top: 5, bottom: 17),
//             child: const Text(
//               "Dashboard",
//               style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 40),
//             ),
//           ),
//         ),
//         Container(
//           padding: const EdgeInsets.all(20),
//           color: Colors.white,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * .50,
//                 child: GridView(
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                       mainAxisExtent: 200,
//                       crossAxisCount: 4,
//                       mainAxisSpacing: 30,
//                       crossAxisSpacing: 30),
//                   children: [
//                     Container(
//                       color: Colors.white,
//                       child: Card(
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20)),
//                         elevation: 5,
//                         child: Column(
//                           children: <Widget>[
//                             Container(
//                               padding: const EdgeInsets.all(20),
//                               width: 100,
//                               child: Column(
//                                   // mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Text(
//                                             "+$shelf",
//                                             style: const TextStyle(
//                                                 fontSize: 20,
//                                                 fontWeight: FontWeight.w900,
//                                                 color: Colors.black),
//                                           ),
//                                           Container(
//                                             padding: const EdgeInsets.all(10),
//                                             decoration: BoxDecoration(
//                                                 borderRadius:
//                                                     BorderRadius.circular(50),
//                                                 color: Colors.white12),
//                                             child: const Icon(
//                                                 CupertinoIcons.cube_box_fill,
//                                                 size: 20),
//                                           )
//                                         ]),
//                                     const SizedBox(
//                                       height: 30,
//                                     ),
//                                     const Text(
//                                       "Total Shelf's",
//                                       style: TextStyle(
//                                           fontSize: 20, color: Colors.black),
//                                     )
//                                   ]),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     Container(
//                       color: Colors.white,
//                       child: Card(
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20)),
//                         elevation: 5,
//                         child: Column(
//                           children: <Widget>[
//                             Container(
//                               padding: const EdgeInsets.all(20),
//                               child: Column(
//                                   // mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Text(
//                                             "+$supplier",
//                                             style: const TextStyle(
//                                                 fontSize: 50,
//                                                 fontWeight: FontWeight.w900,
//                                                 color: Colors.black),
//                                           ),
//                                           Container(
//                                             padding: const EdgeInsets.all(10),
//                                             decoration: BoxDecoration(
//                                                 borderRadius:
//                                                     BorderRadius.circular(50),
//                                                 color: Colors.white12),
//                                             child: const Icon(
//                                                 CupertinoIcons.group_solid,
//                                                 size: 50),
//                                           )
//                                         ]),
//                                     const SizedBox(
//                                       height: 30,
//                                     ),
//                                     const Text(
//                                       "Suppliers",
//                                       style: TextStyle(
//                                           fontSize: 20, color: Colors.black),
//                                     )
//                                   ]),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     Container(
//                       color: Colors.white,
//                       child: Card(
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20)),
//                         elevation: 5,
//                         child: Column(
//                           children: <Widget>[
//                             Container(
//                               padding: const EdgeInsets.all(20),
//                               child: Column(
//                                   // mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Text(
//                                             "+$customer",
//                                             style: const TextStyle(
//                                                 fontSize: 50,
//                                                 fontWeight: FontWeight.w900,
//                                                 color: Colors.black),
//                                           ),
//                                           Container(
//                                             padding: const EdgeInsets.all(10),
//                                             decoration: BoxDecoration(
//                                                 borderRadius:
//                                                     BorderRadius.circular(50),
//                                                 color: Colors.white12),
//                                             child: const Icon(
//                                                 CupertinoIcons.person_solid,
//                                                 size: 50),
//                                           )
//                                         ]),
//                                     const SizedBox(
//                                       height: 30,
//                                     ),
//                                     const Text(
//                                       "Total Buyers",
//                                       style: TextStyle(
//                                           fontSize: 20, color: Colors.black),
//                                     )
//                                   ]),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     Container(
//                       color: Colors.white,
//                       child: Card(
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20)),
//                         elevation: 5,
//                         child: Column(
//                           children: <Widget>[
//                             Container(
//                               padding: const EdgeInsets.all(20),
//                               child: Column(
//                                   // mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Text(
//                                             "+$totalSales",
//                                             style: const TextStyle(
//                                                 fontSize: 50,
//                                                 fontWeight: FontWeight.w900,
//                                                 color: Colors.black),
//                                           ),
//                                           Container(
//                                             padding: const EdgeInsets.all(10),
//                                             decoration: BoxDecoration(
//                                                 borderRadius:
//                                                     BorderRadius.circular(50),
//                                                 color: Colors.white12),
//                                             child: const Icon(
//                                                 CupertinoIcons.cart_badge_minus,
//                                                 size: 50),
//                                           )
//                                         ]),
//                                     const SizedBox(
//                                       height: 30,
//                                     ),
//                                     const Text(
//                                       "Total Sells",
//                                       style: TextStyle(
//                                           fontSize: 20, color: Colors.black),
//                                     )
//                                   ]),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     Container(
//                       color: Colors.white,
//                       child: Card(
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20)),
//                         elevation: 5,
//                         child: Column(
//                           children: <Widget>[
//                             Container(
//                               padding: const EdgeInsets.all(20),
//                               child: Column(
//                                   // mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Text(
//                                             "+$numberOfPurchase",
//                                             style: const TextStyle(
//                                                 fontSize: 50,
//                                                 fontWeight: FontWeight.w900,
//                                                 color: Colors.black),
//                                           ),
//                                           Container(
//                                             padding: const EdgeInsets.all(10),
//                                             decoration: BoxDecoration(
//                                                 borderRadius:
//                                                     BorderRadius.circular(50),
//                                                 color: Colors.white12),
//                                             child: const Icon(
//                                                 CupertinoIcons.cart_badge_plus,
//                                                 size: 50),
//                                           )
//                                         ]),
//                                     const SizedBox(
//                                       height: 30,
//                                     ),
//                                     const Text(
//                                       "Number of Purchase",
//                                       style: TextStyle(
//                                           fontSize: 20, color: Colors.black),
//                                     )
//                                   ]),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     Container(
//                       color: Colors.white,
//                       child: Card(
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20)),
//                         elevation: 5,
//                         child: Column(
//                           children: <Widget>[
//                             Container(
//                               padding: const EdgeInsets.all(20),
//                               child: Column(
//                                   // mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Text(
//                                             "+$totalPurchaseAmount",
//                                             style: const TextStyle(
//                                                 fontSize: 50,
//                                                 fontWeight: FontWeight.w900,
//                                                 color: Colors.black),
//                                           ),
//                                           Container(
//                                             padding: const EdgeInsets.all(10),
//                                             decoration: BoxDecoration(
//                                                 borderRadius:
//                                                     BorderRadius.circular(50),
//                                                 color: Colors.white12),
//                                             child: const Icon(
//                                                 CupertinoIcons
//                                                     .money_dollar_circle,
//                                                 size: 50),
//                                           )
//                                         ]),
//                                     const SizedBox(
//                                       height: 30,
//                                     ),
//                                     const Text(
//                                       "Total Purchase Amount",
//                                       style: TextStyle(
//                                           fontSize: 20, color: Colors.black),
//                                     )
//                                   ]),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     Container(
//                       color: Colors.white,
//                       child: Card(
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20)),
//                         elevation: 5,
//                         child: Column(
//                           children: <Widget>[
//                             Container(
//                               padding: const EdgeInsets.all(20),
//                               child: Column(
//                                   // mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Text(
//                                             "+$totalSellAmount",
//                                             style: const TextStyle(
//                                                 fontSize: 50,
//                                                 fontWeight: FontWeight.w900,
//                                                 color: Colors.black),
//                                           ),
//                                           Container(
//                                             padding: const EdgeInsets.all(10),
//                                             decoration: BoxDecoration(
//                                                 borderRadius:
//                                                     BorderRadius.circular(50),
//                                                 color: Colors.white12),
//                                             child: const Icon(
//                                                 CupertinoIcons
//                                                     .money_dollar_circle_fill,
//                                                 size: 50),
//                                           )
//                                         ]),
//                                     const SizedBox(
//                                       height: 30,
//                                     ),
//                                     const Text(
//                                       "Total sell Amount",
//                                       style: TextStyle(
//                                           fontSize: 20, color: Colors.black),
//                                     )
//                                   ]),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     Container(
//                       color: Colors.white,
//                       child: Card(
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20)),
//                         elevation: 5,
//                         child: Column(
//                           children: <Widget>[
//                             Container(
//                               padding: const EdgeInsets.all(20),
//                               child: Column(
//                                   // mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Text(
//                                             "+$totalProfitAmount",
//                                             style: const TextStyle(
//                                                 fontSize: 50,
//                                                 fontWeight: FontWeight.w900,
//                                                 color: Colors.black),
//                                           ),
//                                           Container(
//                                             padding: const EdgeInsets.all(10),
//                                             decoration: BoxDecoration(
//                                                 borderRadius:
//                                                     BorderRadius.circular(50),
//                                                 color: Colors.white12),
//                                             child: const Icon(
//                                                 CupertinoIcons
//                                                     .bag_fill_badge_plus,
//                                                 size: 50),
//                                           )
//                                         ]),
//                                     const SizedBox(
//                                       height: 30,
//                                     ),
//                                     const Text(
//                                       "Total Profit",
//                                       style: TextStyle(
//                                           fontSize: 20, color: Colors.black),
//                                     )
//                                   ]),
//                             )
//                           ],
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               // Container(
//               //   child: Column(
//               //     crossAxisAlignment: CrossAxisAlignment.start,
//               //     mainAxisAlignment: MainAxisAlignment.start,
//               //     children: [
//               //       Container(
//               //         margin: const EdgeInsets.only(bottom: 20),
//               //         child: const Text(
//               //           "LOW STOCK ITEM LIST",
//               //           style: TextStyle(
//               //               color: Colors.blueAccent,
//               //               fontWeight: FontWeight.w900,
//               //               fontSize: 30),
//               //         ),
//               //       ),
//               //       Container(
//               //         padding: const EdgeInsets.all(25),
//               //         decoration: const BoxDecoration(
//               //             color: Colors.blueGrey,
//               //             borderRadius: BorderRadius.only(
//               //                 topLeft: Radius.circular(15),
//               //                 topRight: Radius.circular(15))),
//               //         child: Row(
//               //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //           children: const [
//               //             Text(
//               //               "Product Name",
//               //               style: TextStyle(
//               //                   color: Colors.white,
//               //                   fontSize: 20,
//               //                   fontWeight: FontWeight.bold),
//               //             ),
//               //             Text(
//               //               "Model Number",
//               //               style: TextStyle(
//               //                   color: Colors.white,
//               //                   fontSize: 20,
//               //                   fontWeight: FontWeight.bold),
//               //             ),
//               //             Text(
//               //               "Total Quality",
//               //               style: TextStyle(
//               //                   color: Colors.white,
//               //                   fontSize: 20,
//               //                   fontWeight: FontWeight.bold),
//               //             ),
//               //             Text(
//               //               "Selling Price",
//               //               style: TextStyle(
//               //                   color: Colors.white,
//               //                   fontSize: 20,
//               //                   fontWeight: FontWeight.bold),
//               //             ),
//               //             Text(
//               //               "Buying Price",
//               //               style: TextStyle(
//               //                   color: Colors.white,
//               //                   fontSize: 20,
//               //                   fontWeight: FontWeight.bold),
//               //             ),
//               //           ],
//               //         ),
//               //       )
//               //     ],
//               //   ),
//               // )
//             ],
//           ),
//         )
//       ]),
//       drawer: const DrawerMenuWidget(),
//     );
//   }

//   //getData
//   void _getAllData() async {
//     shelf = 0;
//     supplier = 0;
//     customer = 0;
//     totalSales = 0;
//     numberOfPurchase = 0;
//     totalPurchaseAmount = 0;
//     totalSellAmount = 0;
//     totalProfitAmount = 0;

//     //inventory
//     var map = await Firestore.instance.collection("inventory").get();
//     setState(() {
//       numberOfPurchase = map.length;
//     });
//     for (var element in map) {
//       setState(() {
//         shelf += element["quantity"] as int;
//         totalPurchaseAmount +=
//             int.parse(element["unitPrice"]) * element["quantity"] as int;
//       });
//     }

//     //customer
//     var map2 = await Firestore.instance.collection("customer").get();
//     setState(() {
//       customer = map2.length;
//     });

//     //supplier
//     var map3 = await Firestore.instance.collection("vendors").get();
//     setState(() {
//       supplier = map3.length;
//     });

//     //sales
//     var map4 = await Firestore.instance.collection("sales").get();
//     setState(() {
//       totalSales = map4.length;
//     });

//     for (var element in map4) {
//       setState(() {
//         totalProfitAmount += element["profit"] * element["quantity"] as int;
//         totalSellAmount +=
//             int.parse(element["unit_price"]) * element["quantity"] as int;
//       });
//     }
//   }
// }






import 'package:firedart/firestore/firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tuckshopmanager/utils/appbar_actions_menu.dart';
import 'package:tuckshopmanager/widget/drawer_menu_widget.dart';

int shelf = 0;
int supplier = 0;
int customer = 0;
int totalSales = 0;
int numberOfPurchase = 0;
int totalPurchaseAmount = 0;
int totalSellAmount = 0;
int totalProfitAmount = 0;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _getAllData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[Colors.purple, Colors.blue],
            ),
          ),
        ),
        actions: AppbarActionMenu.actionFun(context),
      ),
      body: Column(children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[Colors.purple, Colors.blue],
              ),
            ),
            padding: const EdgeInsets.only(top: 5, bottom: 17),
            child: const Text(
              "Dashboard",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30), // Reduced font size for better fit on mobile
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10), // Reduced padding for mobile
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2, // Adaptive columns
                      mainAxisSpacing: 10, // Reduced spacing for mobile
                      crossAxisSpacing: 10,
                      childAspectRatio: MediaQuery.of(context).size.width > 600 ? 1 : 0.75, // Adjusted aspect ratio
                    ),
                    itemCount: 8, // Number of grid items
                    itemBuilder: (context, index) {
                      return _buildGridItem(index);
                    },
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
      drawer: const DrawerMenuWidget(),
    );
  }

  Widget _buildGridItem(int index) {
    IconData icon;
    String label;
    int count;

    switch (index) {
      case 0:
        icon = CupertinoIcons.cube_box_fill;
        label = "Total Shelf's";
        count = shelf;
        break;
      case 1:
        icon = CupertinoIcons.group_solid;
        label = "Suppliers";
        count = supplier;
        break;
      case 2:
        icon = CupertinoIcons.person_solid;
        label = "Total Buyers";
        count = customer;
        break;
      case 3:
        icon = CupertinoIcons.cart_badge_minus;
        label = "Total Sells";
        count = totalSales;
        break;
      case 4:
        icon = CupertinoIcons.cart_badge_plus;
        label = "Number of Purchase";
        count = numberOfPurchase;
        break;
      case 5:
        icon = CupertinoIcons.money_dollar_circle;
        label = "Total Purchase Amount";
        count = totalPurchaseAmount;
        break;
      case 6:
        icon = CupertinoIcons.money_dollar_circle_fill;
        label = "Total Sell Amount";
        count = totalSellAmount;
        break;
      case 7:
        icon = CupertinoIcons.bag_fill_badge_plus;
        label = "Total Profit";
        count = totalProfitAmount;
        break;
      default:
        icon = CupertinoIcons.question;
        label = "Unknown";
        count = 0;
        break;
    }

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "+$count",
                  style: const TextStyle(
                      fontSize: 30, // Reduced font size for mobile
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white12),
                  child: Icon(icon, size: 30), // Reduced icon size for mobile
                )
              ],
            ),
            const SizedBox(height: 10), // Reduced spacing for mobile
            Text(
              label,
              style: const TextStyle(
                  fontSize: 16, // Reduced font size for mobile
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }

  //getData
  void _getAllData() async {
    shelf = 0;
    supplier = 0;
    customer = 0;
    totalSales = 0;
    numberOfPurchase = 0;
    totalPurchaseAmount = 0;
    totalSellAmount = 0;
    totalProfitAmount = 0;

    //inventory
    var map = await Firestore.instance.collection("inventory").get();
    setState(() {
      numberOfPurchase = map.length;
    });
    for (var element in map) {
      setState(() {
        shelf += element["quantity"] as int;
        totalPurchaseAmount +=
            int.parse(element["unitPrice"]) * element["quantity"] as int;
      });
    }

    //customer
    var map2 = await Firestore.instance.collection("customer").get();
    setState(() {
      customer = map2.length;
    });

    //supplier
    var map3 = await Firestore.instance.collection("vendors").get();
    setState(() {
      supplier = map3.length;
    });

    //sales
    var map4 = await Firestore.instance.collection("sales").get();
    setState(() {
      totalSales = map4.length;
    });

    for (var element in map4) {
      setState(() {
        totalProfitAmount += element["profit"] * element["quantity"] as int;
        totalSellAmount +=
            int.parse(element["unit_price"]) * element["quantity"] as int;
      });
    }
  }
}
