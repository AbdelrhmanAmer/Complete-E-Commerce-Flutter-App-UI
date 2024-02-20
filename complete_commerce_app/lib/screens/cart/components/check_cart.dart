import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'add_voucher_btn.dart';
import 'tota_and_check_btn.dart';

class CheckCart extends StatelessWidget {
  const CheckCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(30),
        vertical: getProportionateScreenHeight(15),
      ),
      height: SizeConfig.screenHeight * .2,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(.15),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: const SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AddVoucherBtn(),
            TotalAndCheckBtn()
          ],
        ),
      ),
    );
  }
}


