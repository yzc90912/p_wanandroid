import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:p_wanandroid/data/model/project_list_entity.dart';

import '../../common/routers/index.dart';
import '../web/web_page.dart';

class ProjectItem extends StatelessWidget {
  final ProjectListEntity model;

  const ProjectItem({super.key, required this.model});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateTo(
            context,
            WebPage(
              title: model.title ?? "",
              url: model.link ?? "",
              articleId: model.id ?? 0,
            ));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("作者:${model.author ?? model.shareUser ?? ""}",
                    style: TextStyle(color: Colors.black54, fontSize: 12.sp)),
                Text(
                    DateTime.fromMillisecondsSinceEpoch(model.publishTime ??
                            DateTime.now().millisecondsSinceEpoch)
                        .toString()
                        .substring(0, 19),
                    style: TextStyle(color: Colors.black54, fontSize: 12.sp)),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                  model.title ?? "",
                  maxLines: 2,
                  style: TextStyle(color: Colors.black, fontSize: 14.sp),
                ))
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              children: [
                Text("${model.superChapterName}/${model.chapterName}",
                    style: TextStyle(color: Colors.black54, fontSize: 12.sp)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
