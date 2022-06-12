import 'package:flutter/material.dart';

import '../screens/product_description_Screen.dart';

class ProductItem extends StatelessWidget {
  //const ProductItem({ Key? key }) : super(key: key);
  final String id;
  final String ImageUrl;
  final String title;

  ProductItem(this.id, this.title, this.ImageUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed(ProductDescriptionScreen.routeName, arguments: id);
          },
          child: Container(
            child: Image.network(
              ImageUrl,
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
              Icons.favorite,
              color: Theme.of(context).accentColor,
            ),
            onPressed: () {},
          ),
          title: Text(title),
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
