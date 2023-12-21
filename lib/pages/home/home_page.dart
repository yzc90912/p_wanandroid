import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:p_wanandroid/common/base/base_stateful_page.dart';
import 'package:p_wanandroid/pages/home/home_cubit.dart';
import 'package:p_wanandroid/pages/home/home_state.dart';
import 'package:p_wanandroid/pages/project/project_list_page.dart';
import 'package:p_wanandroid/pages/video/video_page.dart';

class HomePage extends BasePage {
  const HomePage({super.key});

  @override
  BasePageState<HomePage> getState() => _HomePageState();
}

class _HomePageState extends BasePageState<HomePage> {
  Widget mainWidget(state) {
    return DefaultTabController(
      length: state.dataList.length + 1,
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

              tabs: _buildTabs(state),
            ),
          ),
          Expanded(
              child: TabBarView(
                  physics: const BouncingScrollPhysics(),
                  children: _buildPageView(state))),
        ],
      ),
    );
  }

  List<Widget> _buildTabs(state) {
    Widget text = const Tab(text: "视频");
    List<Widget> list =
        state.dataList.map<Widget>((e) => Tab(text: e.name ?? "")).toList();
    list.insert(0, text);
    return list;
  }

  List<Widget> _buildPageView(state) {
    Widget text = const VideoPage();
    List<Widget> list =
        state.dataList.map<Widget>((e) => ProjectListPage(e.id)).toList();
    list.insert(0, text);
    return list;
  }

  /// 隐藏返回按钮
  @override
  Widget left() {
    return const SizedBox();
  }

  @override
  void initState() {
    super.initState();
    pageTitle = "主页";
    pageBgColor = const Color(0xFFF3F4F8);
    isBack = false;

    _getData();
  }

  /// 请求数据
  _getData() {
    HomeCubit cubit = context.read<HomeCubit>();
    cubit.getTabData();
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      return resultWidget(state, (baseState, context) {
        return mainWidget(state);
      }, refreshMethod: () {});
    });
  }

  // Future<void> _load() async {
  //   var response = await DioManager.getInstance()
  //       .androidService
  //       .getCubitList(1, 20, "车讯原创", 0);
  // }
}
