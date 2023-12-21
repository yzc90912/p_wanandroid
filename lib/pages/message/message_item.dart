import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:p_wanandroid/data/model/cubit_entity.dart';
import 'package:p_wanandroid/widget/index.dart';

class MessageItem extends StatefulWidget {
  final Work model;
  Function onTap;
  MessageItem({super.key, required this.model, required this.onTap});

  @override
  State<MessageItem> createState() => _MessageItemState();
}

class _MessageItemState extends State<MessageItem> {
  @override
  Widget build(BuildContext context) {
    var model = widget.model;
    return GestureDetector(
      onTap: () {
        widget.onTap();
      },
      child: Container(
        width: 1.sw,
        color: Colors.white,
        padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 14.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            threeImageWidget(model),
            SizedBox(
              height: 10.h,
            ),
            titleWidget(model),
            SizedBox(
              height: 10.h,
            ),
            bottowWidget(model),
            SizedBox(
              height: 14.h,
            ),
            lineWidget()
          ],
        ),
      ),
    );
  }

  /// 三张图片
  Widget threeImageWidget(model) {
    List<Widget> rowWidget = [];
    if (model.newsPics!.length >= 3) {
      for (int i = 0; i < model.newsPics!.length; i++) {
        rowWidget.add(
          LoadImage(
            model.newsPics![i],
            width: (1.sw - 40.w) / 3,
            height: (1.sw - 40.w) / 3 / 3 * 2,
            radius: 5.h,
          ),
        );
        if (i < 2) {
          rowWidget.add(
            SizedBox(
              width: 10.w,
            ),
          );
        }
      }
    } else {
      rowWidget.add(LoadImage(
        model.videoCover ?? "",
        width: (1.sw - 20.w),
        height: (1.sw - 20.w) / 3 * 2,
        radius: 5.h,
      ));
    }
    return Row(
      children: rowWidget,
    );
  }

  /// 文字描述
  Widget titleWidget(model) {
    return Text(
      model.title ?? "",
    );
  }

  /// 底部viw
  Widget bottowWidget(model) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [authorWidget(model), toolWidget(model)],
    );
  }

  /// 作者
  Widget authorWidget(model) {
    return Row(
      children: [
        LoadImage(
          model.mcnIcon ?? "",
          width: 20.w,
          height: 20.w,
          radius: 10.w,
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          model.mcnRealName ?? "",
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          model.createTimeStr ?? "",
        ),
      ],
    );
  }

  /// 工具栏
  Widget toolWidget(model) {
    return Row(
      children: [
        Row(
          children: [
            LoadImage(
              "pageviewIcon",
              fit: BoxFit.fitWidth,
              width: 20.w,
              height: 20.w,
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              model.uVContentStr ?? "",
            ),
          ],
        ),
        SizedBox(
          width: 10.w,
        ),
        GestureDetector(
          onTap: () {},
          child: Row(
            children: [
              LoadImage(
                "zan_nonal",
                fit: BoxFit.fitWidth,
                width: 16.w,
                height: 16.w,
                iconColor: model.isThumbs == 1 ? Colors.red : Colors.blueGrey,
              ),
              SizedBox(
                width: 5.w,
              ),
              const Text(
                '点赞',
              ),
            ],
          ),
        )
      ],
    );
  }

  /// 线
  Widget lineWidget() {
    return Container(
      height: 1.h,
      width: 1.sw - 20.w,
      color: Colors.black12,
    );
  }
}
