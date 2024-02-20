import 'package:complete_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/cart.dart';
import 'cart_item_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(kDefaultPadding)),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/2),
            child: Dismissible(
              key: Key(demoCarts[index].product.id.toString()),
              background: Container(
                padding: const EdgeInsets.only(right: kDefaultPadding),
                decoration: BoxDecoration(
                    color: Colors.red.withOpacity(.2),
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  children: [
                    const Spacer(),
                    SvgPicture.asset("assets/icons/Trash.svg")
                  ],
                ),
              ),
              child: CartItemCard(cart: demoCarts[index]),
            ),
          );
        },
      ),
    );
  }
}
