import 'package:cellula_task1_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HeaderTextSection extends StatelessWidget {
  const HeaderTextSection(
      {super.key, required this.text1, required this.text2});
  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text1,
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            text2,
            style: Styles.textStyle20.copyWith(
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
