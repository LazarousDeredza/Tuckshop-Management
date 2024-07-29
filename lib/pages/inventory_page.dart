// import 'package:firedart/firestore/firestore.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:tuckshopmanager/model/inventoryModel.dart';
// import 'package:tuckshopmanager/pages/supplier_management_page.dart';
// import 'package:tuckshopmanager/utils/appbar_actions_menu.dart';
// import 'package:tuckshopmanager/widget/drawer_menu_widget.dart';

// import '../model/vendorModel.dart';
// import '../utils/routes.dart';

// //global variable
// final _formKey = GlobalKey<FormState>();
// List<InventoryDataModel> inventoryList = [];
// List<VendorDataModel> vendorList = [];
// int item = 0;

// class InventoryPage extends StatefulWidget {
//   const InventoryPage({Key? key}) : super(key: key);

//   @override
//   State<InventoryPage> createState() => _InventoryPage();
// }

// class _InventoryPage extends State<InventoryPage> {
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     if (inventoryList.isNotEmpty) loadingIcon = false;
//     _getInventoryList();
//   }

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         drawer: const DrawerMenuWidget(),
//         appBar: AppBar(
//           iconTheme: const IconThemeData(color: Colors.white),
//           flexibleSpace: Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.centerLeft,
//                 end: Alignment.centerRight,
//                 colors: <Color>[Colors.purple, Colors.blue],
//               ),
//             ),
//           ),
//           actions: AppbarActionMenu.actionFun(context),
//         ),
//         body: Column(
//           children: [
//             SizedBox(
//               width: MediaQuery.of(context).size.width,
//               child: Container(
//                 alignment: Alignment.center,
//                 decoration: const BoxDecoration(
//                   gradient: LinearGradient(
//                     begin: Alignment.centerLeft,
//                     end: Alignment.centerRight,
//                     colors: <Color>[Colors.purple, Colors.blue],
//                   ),
//                 ),
//                 padding: const EdgeInsets.only(top: 5, bottom: 17),
//                 child: const Text(
//                   "Inventory",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 40),
//                 ),
//               ),
//             ),
//             Container(
//               alignment: Alignment.center,
//               width: MediaQuery.of(context).size.width,
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: SingleChildScrollView(
//                   child: ConstrainedBox(
//                     constraints: BoxConstraints(
//                         minWidth: MediaQuery.of(context).size.width),
//                     child: DataTable(
//                         columns: const [
//                           DataColumn(
//                               label: Text(
//                             "#ID",
//                             style: TextStyle(fontSize: 18),
//                           )),
//                           DataColumn(
//                               label: Text(
//                             "Model",
//                             style: TextStyle(fontSize: 18),
//                           )),
//                           DataColumn(
//                               label: Text(
//                             "Name",
//                             style: TextStyle(fontSize: 18),
//                           )),
//                           DataColumn(
//                               label: Text(
//                             "Description",
//                             style: TextStyle(fontSize: 18),
//                           )),
//                           DataColumn(
//                               label: Text(
//                             "Vendors",
//                             style: TextStyle(fontSize: 18),
//                           )),
//                           DataColumn(
//                               label: Text(
//                             "Country/Origin",
//                             style: TextStyle(fontSize: 18),
//                           )),
//                           DataColumn(
//                               label: Text(
//                             "Items",
//                             style: TextStyle(fontSize: 18),
//                           )),
//                           DataColumn(
//                               label: Text(
//                             "Unit Price",
//                             style: TextStyle(fontSize: 18),
//                           )),
//                           DataColumn(
//                               label: Text(
//                             "Status",
//                             style: TextStyle(fontSize: 18),
//                           ))
//                         ],
//                         rows: inventoryList
//                             .map((data) => DataRow(cells: [
//                                   DataCell(Text("#${data.id}",
//                                       style: const TextStyle(
//                                         fontSize: 15,
//                                         color: Colors.blue,
//                                       ))),
//                                   DataCell(Text(
//                                     data.model,
//                                     style: const TextStyle(fontSize: 15),
//                                   )),
//                                   DataCell(Text(
//                                     data.name,
//                                     style: const TextStyle(fontSize: 15),
//                                   )),
//                                   DataCell(Text(
//                                     data.description,
//                                     style: const TextStyle(fontSize: 15),
//                                   )),
//                                   DataCell(Text(
//                                     data.vendor,
//                                     style: const TextStyle(fontSize: 15),
//                                   )),
//                                   DataCell(Text(
//                                     data.country,
//                                     style: const TextStyle(fontSize: 15),
//                                   )),
//                                   DataCell(Text(
//                                     data.items,
//                                     style: const TextStyle(fontSize: 15),
//                                   )),
//                                   DataCell(Text(
//                                     data.unitPrice,
//                                     style: const TextStyle(fontSize: 15),
//                                   )),
//                                   DataCell(int.parse(data.items) == 0
//                                       ? (Container(
//                                           padding: const EdgeInsets.all(10),
//                                           decoration: BoxDecoration(
//                                               color: Colors.red,
//                                               borderRadius:
//                                                   BorderRadius.circular(20)),
//                                           child: Wrap(
//                                             crossAxisAlignment:
//                                                 WrapCrossAlignment.center,
//                                             children: [
//                                               Container(
//                                                 width: 10,
//                                                 height: 10,
//                                                 decoration: const BoxDecoration(
//                                                   shape: BoxShape.circle,
//                                                   color: Colors.white,
//                                                 ),
//                                               ),
//                                               const SizedBox(
//                                                 width: 5,
//                                               ),
//                                               const Text(
//                                                 "Out of Stock..",
//                                                 style: TextStyle(
//                                                     color: Colors.white,
//                                                     fontWeight:
//                                                         FontWeight.bold),
//                                               )
//                                             ],
//                                           ),
//                                         ))
//                                       : (int.parse(data.items) < 10
//                                           ? Container(
//                                               padding: const EdgeInsets.all(10),
//                                               decoration: BoxDecoration(
//                                                   color: Colors.orange,
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           20)),
//                                               child: Wrap(
//                                                 crossAxisAlignment:
//                                                     WrapCrossAlignment.center,
//                                                 children: [
//                                                   Container(
//                                                     padding:
//                                                         const EdgeInsets.all(
//                                                             10),
//                                                     width: 10,
//                                                     height: 10,
//                                                     decoration:
//                                                         const BoxDecoration(
//                                                       shape: BoxShape.circle,
//                                                       color: Colors.white,
//                                                     ),
//                                                   ),
//                                                   const SizedBox(
//                                                     width: 5,
//                                                   ),
//                                                   const Text(
//                                                     "Low Stock..",
//                                                     style: TextStyle(
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold),
//                                                   )
//                                                 ],
//                                               ))
//                                           : (Container(
//                                               padding: const EdgeInsets.all(10),
//                                               decoration: BoxDecoration(
//                                                   color: Colors.green,
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           20)),
//                                               child: Wrap(
//                                                 crossAxisAlignment:
//                                                     WrapCrossAlignment.center,
//                                                 children: [
//                                                   Container(
//                                                     width: 10,
//                                                     height: 10,
//                                                     decoration:
//                                                         const BoxDecoration(
//                                                       shape: BoxShape.circle,
//                                                       color: Colors.white,
//                                                     ),
//                                                   ),
//                                                   const SizedBox(
//                                                     width: 5,
//                                                   ),
//                                                   const Text(
//                                                     "In Stock..",
//                                                     style: TextStyle(
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold),
//                                                   )
//                                                 ],
//                                               ))))),
//                                 ]))
//                             .toList()),
//                   ),
//                 ),
//               ),
//             ),
//             Visibility(
//                 visible: loadingIcon, child: const CircularProgressIndicator())
//           ],
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: const Icon(Icons.add),
//           onPressed: () => {
//             MyRoutes.selectedIndex = 2,
//             Navigator.pushReplacementNamed(context, MyRoutes.purchaseRoute)
//           },
//         ),
//       );

//   //fetching inventory data
//   Future _getInventoryList() async {
//     var map = await Firestore.instance.collection("inventory").get();
//     inventoryList.clear();
//     List<InventoryDataModel> apiList = [];
//     apiList.clear();
//     for (var element in map) {
//       apiList.add(InventoryDataModel(
//           element["id"],
//           element.id,
//           element["model"],
//           element["name"],
//           element["description"],
//           element["vendor"],
//           element["country"],
//           element["quantity"].toString(),
//           element["vendorId"],
//           element["unitPrice"]));
//     }
//     setState(() {
//       loadingIcon = false;
//       inventoryList.clear();
//       inventoryList = apiList;
//     });
//   }
// }


import 'package:firedart/firestore/firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tuckshopmanager/model/inventoryModel.dart';
import 'package:tuckshopmanager/pages/supplier_management_page.dart';
import 'package:tuckshopmanager/utils/appbar_actions_menu.dart';
import 'package:tuckshopmanager/widget/drawer_menu_widget.dart';

import '../model/vendorModel.dart';
import '../utils/routes.dart';

//global variable
final _formKey = GlobalKey<FormState>();
List<InventoryDataModel> inventoryList = [];
List<VendorDataModel> vendorList = [];
int item = 0;

class InventoryPage extends StatefulWidget {
  const InventoryPage({Key? key}) : super(key: key);

  @override
  State<InventoryPage> createState() => _InventoryPage();
}

class _InventoryPage extends State<InventoryPage> {
  bool loadingIcon = true;
  List<InventoryDataModel> lowStockList = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (inventoryList.isNotEmpty) loadingIcon = false;
    _getInventoryList();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const DrawerMenuWidget(),
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
        body: Column(
          children: [
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
                  "Inventory",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                        minWidth: MediaQuery.of(context).size.width),
                    child: DataTable(
                        columns: const [
                          DataColumn(
                              label: Text(
                            "#ID",
                            style: TextStyle(fontSize: 18),
                          )),
                          DataColumn(
                              label: Text(
                            "Model",
                            style: TextStyle(fontSize: 18),
                          )),
                          DataColumn(
                              label: Text(
                            "Name",
                            style: TextStyle(fontSize: 18),
                          )),
                          DataColumn(
                              label: Text(
                            "Description",
                            style: TextStyle(fontSize: 18),
                          )),
                          DataColumn(
                              label: Text(
                            "Vendors",
                            style: TextStyle(fontSize: 18),
                          )),
                          DataColumn(
                              label: Text(
                            "Country/Origin",
                            style: TextStyle(fontSize: 18),
                          )),
                          DataColumn(
                              label: Text(
                            "Items",
                            style: TextStyle(fontSize: 18),
                          )),
                          DataColumn(
                              label: Text(
                            "Unit Price",
                            style: TextStyle(fontSize: 18),
                          )),
                          DataColumn(
                              label: Text(
                            "Status",
                            style: TextStyle(fontSize: 18),
                          ))
                        ],
                        rows: inventoryList
                            .map((data) => DataRow(cells: [
                                  DataCell(Text("#${data.id}",
                                      style: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.blue,
                                      ))),
                                  DataCell(Text(
                                    data.model,
                                    style: const TextStyle(fontSize: 15),
                                  )),
                                  DataCell(Text(
                                    data.name,
                                    style: const TextStyle(fontSize: 15),
                                  )),
                                  DataCell(Text(
                                    data.description,
                                    style: const TextStyle(fontSize: 15),
                                  )),
                                  DataCell(Text(
                                    data.vendor,
                                    style: const TextStyle(fontSize: 15),
                                  )),
                                  DataCell(Text(
                                    data.country,
                                    style: const TextStyle(fontSize: 15),
                                  )),
                                  DataCell(Text(
                                    data.items,
                                    style: const TextStyle(fontSize: 15),
                                  )),
                                  DataCell(Text(
                                    data.unitPrice,
                                    style: const TextStyle(fontSize: 15),
                                  )),
                                  DataCell(int.parse(data.items) == 0
                                      ? (Container(
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Wrap(
                                            crossAxisAlignment:
                                                WrapCrossAlignment.center,
                                            children: [
                                              Container(
                                                width: 10,
                                                height: 10,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const Text(
                                                "Out of Stock..",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ))
                                      : (int.parse(data.items) < 10
                                          ? Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.orange,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: Wrap(
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.center,
                                                children: [
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    width: 10,
                                                    height: 10,
                                                    decoration:
                                                        const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  const Text(
                                                    "Low Stock..",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ))
                                          : (Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: Wrap(
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 10,
                                                    height: 10,
                                                    decoration:
                                                        const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  const Text(
                                                    "In Stock..",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ))))),
                                ]))
                            .toList()),
                  ),
                ),
              ),
            ),
            Visibility(
                visible: loadingIcon, child: const CircularProgressIndicator())
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => {
            MyRoutes.selectedIndex = 2,
            Navigator.pushReplacementNamed(context, MyRoutes.purchaseRoute)
          },
        ),
      );

  //fetching inventory data
  Future _getInventoryList() async {
    var map = await Firestore.instance.collection("inventory").get();
    inventoryList.clear();
    lowStockList.clear();
    List<InventoryDataModel> apiList = [];
    for (var element in map) {
      InventoryDataModel item = InventoryDataModel(
          element["id"],
          element.id,
          element["model"],
          element["name"],
          element["description"],
          element["vendor"],
          element["country"],
          element["quantity"].toString(),
          element["vendorId"],
          element["unitPrice"]);

      apiList.add(item);

      if (int.parse(item.items) == 0 || int.parse(item.items) < 10) {
        lowStockList.add(item);
      }
    }
    setState(() {
      loadingIcon = false;
      inventoryList = apiList;
    });

    if (lowStockList.isNotEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _showLowStockDialog();
      });
    }
  }

  void _showLowStockDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Low Stock/Out of Stock Items"),
          content: Container(
            width: double.minPositive,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: lowStockList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(lowStockList[index].name),
                  subtitle: Text(
                      "Model: ${lowStockList[index].model}, Items: ${lowStockList[index].items}"),
                );
              },
            ),
          ),
          actions: [
            TextButton(
              child: Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
