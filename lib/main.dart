import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:project/view_models/wishlist_view_model.dart';
import 'package:project/view_models/keranjang_view_model.dart';
import 'package:project/view_models/transaction_view_model.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create:(_) => WishlistViewModel(),
          ),
        ChangeNotifierProvider(
          create:(_) => KeranjangViewModel(),
          ),
        ChangeNotifierProvider(
          create: (context) => TransactionViewModel(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
       home: const MyApp(),
      ),
    );
  }
}
