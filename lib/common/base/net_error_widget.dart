import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widget/index.dart';

class NetErrorWidget extends StatelessWidget {
  final String title;
  final Function refreshMethod;

  const NetErrorWidget(
      {super.key, required this.title, required this.refreshMethod});

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
          DelayButton(
              width: 100.w,
              height: 34.h,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 40.h),
              padding: EdgeInsets.symmetric(
                horizontal: 18.w,
              ),
              onTap: () {
                refreshMethod();
              },
              decoration: BoxDecoration(
                  color: const Color(0xFF102FA5),
                  borderRadius: BorderRadius.circular(17.h)),
              mainWidget: Text(
                '重新加载',
                style: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ))
        ],
      ),
    );
  }
}
