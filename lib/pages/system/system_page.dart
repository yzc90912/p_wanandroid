import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:p_wanandroid/common/base/base_stateful_page.dart';
import 'package:p_wanandroid/pages/system/category/catrgory_page.dart';
import 'package:p_wanandroid/pages/system/navi/navi_page.dart';

class SystemPage extends BasePage {
  const SystemPage({super.key});

  @override
  BasePageState<SystemPage> getState() => _SystemPageState();
}

class _SystemPageState extends BasePageState<SystemPage>
    with TickerProviderStateMixin {
  late TabController tabController;
  late PageController pageController;
  late List<String>? topList;

  @override
  void initState() {
    super.initState();
    isRenderHeader = false;
    topList = ["分类", "体系"];
    tabController = TabController(vsync: this, length: topList!.length);
    pageController = PageController();
  }

  void changeTab(int index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void onPageChanged(int index) {
    tabController.animateTo(index, duration: const Duration(milliseconds: 300));
  }

  Widget _buildTabBar(context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          _buildTabView1(context),
          Expanded(
            child: PageView(
              controller: pageController,
              onPageChanged: onPageChanged,
              children: const [CategoryPage(), NaviPage()],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabView1(context) {
    return LayoutBuilder(builder: (context, constraints) {
      // final double tabWidth =
      //     (MediaQuery.of(context).size.width - 35.rpx * 2) / 3;
      return Container(
        height: 40.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color(0xffDD88CF),
            borderRadius: BorderRadius.circular(25.h)),
        margin: EdgeInsets.only(left: 100.w, right: 100.w),
        padding: EdgeInsets.all(5.r),
        child: TabBar(
          labelColor: const Color(0xffDD88CF), //选中的颜色
          labelStyle: const TextStyle(
            color: Color(0xff4B164C),
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelColor: const Color(0xff4B164C), //未选中的颜色
          unselectedLabelStyle: const TextStyle(
            color: Color(0xff4B164C),
            fontWeight: FontWeight.bold,
          ),
          isScrollable: false,
          //自定义indicator样式
          indicator: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          controller: tabController,
          onTap: changeTab,
          tabs: topList!.map<Widget>((e) => Tab(text: e)).toList(),
        ),
      );
    });
  }

  @override
  Widget buildPage(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: ScreenUtil().statusBarHeight),
        child: _buildTabBar(context));
  }
}
