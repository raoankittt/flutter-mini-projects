import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final IconData? leftIcon;
  final IconData? rightIcon;
  final Function? leftCallback;
  const CustomAppBar(
      {super.key, this.leftIcon, this.rightIcon, this.leftCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: leftCallback != null ? () => leftCallback!() : null,
            child: _buildIcon(leftIcon!),
          ),
          _buildIcon(rightIcon!),
        ],
      ),
    );
  }

  Container _buildIcon(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Icon(icon),
    );
  }
}
