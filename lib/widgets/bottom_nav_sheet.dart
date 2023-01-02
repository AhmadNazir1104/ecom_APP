import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/custom_text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomSheetWidget extends StatelessWidget {
  final IconData icon;
  final String info;
  const BottomSheetWidget({required this.icon, required this.info, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(
          width: 10.w,
        ),
        text(text: info, size: 14.sp)
      ],
    );
  }
}
