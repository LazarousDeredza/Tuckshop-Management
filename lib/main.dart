import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:firebase_core/firebase_core.dart';

import 'package:tuckshopmanager/pages/customer_page.dart';
import 'package:tuckshopmanager/pages/home_pages.dart';
import 'package:tuckshopmanager/pages/inventory_page.dart';
import 'package:tuckshopmanager/pages/login_page.dart';
import 'package:tuckshopmanager/pages/purchasePage.dart';
import 'package:tuckshopmanager/pages/salesPage.dart';
import 'package:tuckshopmanager/pages/user_management_page.dart';
import 'package:tuckshopmanager/pages/vendor_management_page.dart';
import 'package:tuckshopmanager/utils/data.dart';
import 'package:tuckshopmanager/utils/routes.dart';

// ...

void main(List<String> args)  {
  WidgetsFlutterBinding.ensureInitialized();
   Firestore.initialize(SavedData.projectId);
   //Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.purple,
          fontFamily: GoogleFonts.lato().fontFamily,
          appBarTheme: const AppBarTheme(
              color: Colors.white,
              elevation: 0.0,
              iconTheme: IconThemeData(color: Colors.black))),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/login",
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.inventoryRoute: (context) => const InventoryPage(),
        MyRoutes.userManagementRoute: (context) => const UserManagementPage(),
        MyRoutes.vendorManagementRoute: (context) => const VendorManagementPage(),
        MyRoutes.salesRoute: (context) => const SalesManagementPage(),
        MyRoutes.customerRoutes: (context) => const CustomerPage(),
        MyRoutes.purchaseRoute:(context)=>const PurchasePage()
      },
    );
  }
}
