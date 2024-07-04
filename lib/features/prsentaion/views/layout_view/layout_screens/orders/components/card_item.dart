import 'package:flutter/material.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_text.dart';

class CardItem extends StatelessWidget {
  final String text;
  final String title;
  const CardItem({super.key,required this.text,required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyText(text: text  ),
        MyText(text: title),
      ],
    );
  }
}
