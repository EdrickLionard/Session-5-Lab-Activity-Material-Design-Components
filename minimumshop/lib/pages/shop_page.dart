import 'package:flutter/material.dart';
import 'package:minimumshop/components/my_drawer.dart';
import 'package:minimumshop/components/my_product_tile.dart';
import 'package:minimumshop/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    //access products in shop
    final products = context.watch<Shop>().shop;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.tertiary,
          elevation: 0,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          iconTheme: IconThemeData(
            color: Theme.of(context).colorScheme.secondary, // Warna ikon drawer
          ),
          title: Text(
            "Shop Page",
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
        drawer: MyDrawer(),
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: ListView(
          children: [
            const SizedBox(height: 25),

            // shop subtitle
            Center(
                child: Text(
              "Pilih kopi yang menghidupkan anda!",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            )),

            //product list
            SizedBox(
              height: 550,
              child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
                itemBuilder: (context, index) {
                  //get each individual product from shop
                  final product = products[index];

                  //return as product tile UI
                  return MyProductTile(product: product);
                },
              ),
            )
          ],
        ));
  }
}
