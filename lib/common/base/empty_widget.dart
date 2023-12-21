import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyWidget extends StatelessWidget {
  final String title;
  const EmptyWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 117.h, bottom: 10.h),
            width: 160.w,
            height: 160.w,
            child: Image.asset('assets/images/image_empty.webp'),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 14.sp, color: const Color(0xFF999999)),
          ),
        ],
      ),
    );
  }
}
