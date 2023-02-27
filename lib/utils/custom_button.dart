import 'package:flutter/material.dart';
import 'package:meeting_time_app/utils/custom_colors.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final Function() onPressed;
  const CustomButton({Key? key, this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double customWidth = MediaQuery.of(context).size.width / baseWidth;
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: 52 * customWidth,
        width: 158.96 * customWidth,
        decoration: text == 'SLOTS'
            ? BoxDecoration(
                color: orange,
                borderRadius: BorderRadius.circular(7 * customWidth),
              )
            : BoxDecoration(
                border: Border.all(color: black),
                borderRadius: BorderRadius.circular(7 * customWidth),
              ),
        child: Center(
          child: Text(
            text.toString(),
            style: text == 'SLOTS'
                ? TextStyle(color: white, fontSize: 19.4 * customWidth)
                : TextStyle(color: black, fontSize: 19.4 * customWidth),
          ),
        ),
      ),
    );
  }
}
