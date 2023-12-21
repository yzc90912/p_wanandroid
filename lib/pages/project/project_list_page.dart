import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:p_wanandroid/pages/project/project_list_cubit.dart';
import 'package:p_wanandroid/pages/project/project_list_state.dart';
import 'package:p_wanandroid/pages/web/web_page.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../common/index.dart';
import '../../widget/image/load_image.dart';

class ProjectListPage extends BasePage {
  const ProjectListPage(this.cid, {super.key});
  final int cid;

  @override
  BasePageState<ProjectListPage> getState() => _ProjectListPageState();
}

class _ProjectListPageState extends BasePageState<ProjectListPage> {
  /// 请求分页
  int _pageNum = 1;

  /// 列表控制器
  final ScrollController scrollController = ScrollController();

  /// 刷新组建控制器
  final RefreshController refreshController =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    pageBgColor = Colors.grey;
    isRenderHeader = false;
    _getData();
  }

  /// 请求数据
  _getData() {
    ProjectListCubit cubit = context.read<ProjectListCubit>();
    cubit.getListData(widget.cid, _pageNum);
  }

  /// 上拉加载
  void _onLoading() {
    _pageNum++;
    _getData();
  }

  /// 下拉刷新
  void _onRefresh() {
    _pageNum = 1;
    _getData();
  }

  void _listener(BuildContext context, state) {
    refreshController.refreshCompleted();
    refreshController.loadComplete();
    if (state.isNoMoreDataState == true) {
      refreshController.loadNoData();
    }
  }

  Widget mainWidget(state) {
    return SmartRefresher(
      controller: refreshController,
      child: MasonryGridView.count(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 6.w),
          crossAxisCount: 2, // 几列
          mainAxisSpacing: 20, // 间距
          crossAxisSpacing: 10,
          itemCount: state.dataList.length,
          shrinkWrap: false, // 是否收缩
          // physics: const NeverScrollableScrollPhysics(), // 禁止左右滑动
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                navigateTo(
                    context,
                    WebPage(
                      title: state.dataList[index].title,
                      url: state.dataList[index].link,
                      articleId: state.dataList[index].id,
                    ));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LoadImage(
                      state.dataList[index].envelopePic,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.r),
                          topRight: Radius.circular(10.r)),
                      width: double.infinity,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      state.dataList[index].title,
                      maxLines: 1,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      state.dataList[index].desc,
                      maxLines: 2,
                      style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    const Row(
                      children: [],
                    )
                  ],
                ),
              ),
            );
          }),
    );
    // return BaseListView(
    //   refreshController: refreshController,
    //   scrollController: scrollController,
    //   bgColor: const Color(0xFFF3F4F8),
    //   enablePullDown: true,
    //   enablePullUp: true,
    //   data: state.dataList ?? [],
    //   onRefresh: _onRefresh,
    //   onLoading: _onLoading,
    //   itemBuilder: (ProjectListEntity model, int index) => const Text("data"),
    // );
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocConsumer<ProjectListCubit, ProjectListState>(
      listener: _listener,
      listenWhen: (state1, state2) {
        if (state1.netLoadCount != state2.netLoadCount) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        return resultWidget(state, (baseState, context) => mainWidget(state),
            refreshMethod: () {
          _pageNum = 1;
          _getData();
        });
      },
    );
  }
}
