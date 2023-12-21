import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:p_wanandroid/common/index.dart';
import 'package:p_wanandroid/pages/tab/tab_list_page.dart';

import '../../data/model/system_entity.dart';

class TabPage extends BasePage {
  const TabPage({super.key, required this.systemEntity});
  final SystemEntity systemEntity;
  @override
  BasePageState<TabPage> getState() => _TabPageState();
}

class _TabPageState extends BasePageState<TabPage> {
  @override
  void initState() {
    pageTitle = widget.systemEntity.name ?? "";
    super.initState();
  }

  @override
  Widget buildPage(BuildContext context) {
    return DefaultTabController(
      length: widget.systemEntity.children!.length + 1,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            // 填充：const EdgeInsets.对称（垂直：10，水平：5），
            height: 45.h,

            child: TabBar(
              // labelColor: AppColors.color4B164C, //选中的颜色
              labelStyle:
                  TextStyle(fontWeight: FontWeight.w700, fontSize: 18.h),
              // unselectedLabelColor: AppColors.color6D4E6D, //未选中的颜色
              unselectedLabelStyle:
                  TextStyle(fontWeight: FontWeight.normal, fontSize: 15.h),
              isScrollable: true,
              //自定义indicator样式
              indicator: const BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(15))),

              tabs: widget.systemEntity.children!
                  .map<Widget>((e) => Tab(text: e.name ?? ""))
                  .toList(),
            ),
          ),
          Expanded(
              child: TabBarView(
                  physics: const BouncingScrollPhysics(),
                  children: widget.systemEntity.children!
                      .map<Widget>((e) => TabListPage(cid: e.id ?? 0))
                      .toList())),
        ],
      ),
    );
  }
}
