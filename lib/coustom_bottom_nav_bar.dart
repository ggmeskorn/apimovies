import 'package:flutter/material.dart';
import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.today,
                color: Color(0xFF979797),
              ),
              Icon(
                Icons.videocam_outlined,
                color: Color(0xFF979797),
              ),
              Icon(
                Icons.brightness_3_outlined,
                color: Color(0xFF979797),
              ),
              Icon(
                Icons.album_outlined,
                color: Color(0xFF979797),
              ),
              Icon(
                Icons.android,
                color: Color(0xFF979797),
              ),
            ],
          )),
    );
  }
}
