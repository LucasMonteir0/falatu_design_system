import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){}, child: const Text('Default Button'));
  }
}