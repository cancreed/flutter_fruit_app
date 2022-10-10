
import 'package:flutter/material.dart';

class TextButtonSmall extends StatelessWidget {
  const TextButtonSmall({
    Key? key, required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {}, child: Text(text,style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.green)));
  }
}
