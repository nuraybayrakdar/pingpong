import 'package:flutter/material.dart';
import 'package:pingpong/utils/constants.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final double appbar_height = 56.0;
  final Widget? leading_icon;
  final Widget action_icon;

  const CustomAppbar({Key? key, this.leading_icon, required this.action_icon})
      : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(appbar_height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Constants.transparent_color,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: IconButton(
          icon: leading_icon == null
              ? Container()
              : IconButton(onPressed: () {}, icon: leading_icon!),
          onPressed: () {},
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            icon: action_icon,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
