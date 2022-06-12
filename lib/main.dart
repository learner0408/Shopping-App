import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/product_overview_screen.dart';
import './screens/product_description_Screen.dart';
import './providers/products_providers.dart';

void main() => runApp(YourShop());

class YourShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => ProductsProvider(),
      child: MaterialApp(
        title: "Your Shop",
        theme: ThemeData(
            primaryColor: Colors.purple,
            accentColor: Colors.deepOrange,
            fontFamily: 'Lato'),
        home: ProductOverviewScreen(),
        routes: {
          ProductDescriptionScreen.routeName: (ctx) =>
              ProductDescriptionScreen()
        },
      ),
    );
  }
}
