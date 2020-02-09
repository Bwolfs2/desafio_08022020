import 'package:flutter/material.dart';

class CustomChipWidget extends StatelessWidget {
  final String label;
  final bool selected;
  final Function() onSelected;

  const CustomChipWidget({Key key, this.label, this.selected, this.onSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelected,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: selected ? Colors.white.withOpacity(.2) : null,
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Text(
          label,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
