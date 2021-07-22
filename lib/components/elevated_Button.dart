import 'package:flutter/material.dart';

import '../size_config.dart';

class ElevatedButtons extends StatelessWidget {
  const ElevatedButtons({Key key, this.text, this.press}) : super(key: key);
  final String text;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(45),
      child: ElevatedButton(
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: Color(0xFF4970FC),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
