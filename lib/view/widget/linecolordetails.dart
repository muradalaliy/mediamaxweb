import 'package:flutter/material.dart';
import 'package:mediamaxweb/view/widget/colorlinemedia.dart';

class LineColorDetails extends StatelessWidget {
  final int itemcount;
  const LineColorDetails({super.key, required this.itemcount});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        ColorLine(),
        ColorLine(),
        ColorLine(),
        ColorLine(),
        ColorLine(),
        ColorLine(),
      ],
    );
  }
}
