import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/product_description_Screen.dart';
import '../providers/product.dart';

class ProductItem extends StatelessWidget {
  //const ProductItem({ Key? key }) : super(key: key);
  // final String id;
  // final String ImageUrl;
  // final String title;

  // ProductItem(this.id, this.title, this.ImageUrl);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDescriptionScreen.routeName,
                arguments: product.id);
          },
          child: Container(
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.black54,
                  offset: Offset(20, 20),
                  blurRadius: 10,
                  spreadRadius: 30)
            ]),
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            icon: Icon(
              product.isFavourite ? Icons.favorite : Icons.favorite_border,
              color: Theme.of(context).accentColor,
            ),
            onPressed: () {
              product.toggleFavorite();
            },
          ),
          title: Text(product.title),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }
}
