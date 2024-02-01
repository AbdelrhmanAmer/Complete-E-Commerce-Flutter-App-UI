import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    super.key,
    required List<String> errors,
  }) : _errors = errors;

  final List<String> _errors;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
            _errors.length, (index) => formErrorText(error: _errors[index])));
  }

  Row formErrorText({error}) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: getProportionateScreenHeight(14),
          width: getProportionateScreenWidth(14),
        ),
        SizedBox(
          width: getProportionateScreenWidth(kDefaultPadding / 2),
        ),
        Text(_errors.isEmpty ? error : _errors[0]),
      ],
    );
  }
}
