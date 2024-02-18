import 'package:flutter/material.dart';

import '../../models/product.dart';
import 'components/appbar_content.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  const DetailsScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F6F9),
        appBar: CustomAppBar(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: AppBarContent(rating: arguments.product.rating),
        ),
        body: const Body(),
      ),
    );
  }
}

class CustomAppBar extends PreferredSize {
  const CustomAppBar({
    super.key,
    required super.preferredSize,
    required super.child,
  });
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
