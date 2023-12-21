import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:p_wanandroid/pages/login/login_page.dart';
import 'package:p_wanandroid/pages/mine/mine_cubit.dart';
import 'package:p_wanandroid/pages/mine/mine_state.dart';
import 'package:p_wanandroid/pages/mine/project_item.dart';
import 'package:p_wanandroid/pages/mine/user_cubit.dart';
import 'package:p_wanandroid/pages/mine/user_state.dart';
import 'package:p_wanandroid/pages/setting/setting_page.dart';
import 'package:p_wanandroid/widget/index.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../common/index.dart';
import '../../data/model/project_list_entity.dart';
import '../../generated/l10n.dart';
import '../image/fade_route.dart';
import '../image/photoView_gallery_screen.dart';

class MinePage extends BasePage {
  const MinePage({super.key});

  @override
  BasePageState<MinePage> getState() => _MinePageState();
}

class _MinePageState extends BasePageState<MinePage> {
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
    isRenderHeader = false;
    UserCubit userCubit = context.read<UserCubit>();
    userCubit.getUserInfo();
    _getData();
  }

  /// 请求数据
  _getData() {
    MineCubit cubit = context.read<MineCubit>();
    cubit.getListData(_pageNum);
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

  Widget _buildUserInfo() {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        return Stack(
          // alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 230,
            ),
            const LoadImage("bg_mine_head"),
            Positioned(
                child: GestureDetector(
              onTap: () {
                var imgList = [
                  'https://i0.hdslb.com/bfs/article/5ce32eed0526dca1d159c50cbd36bb26d5a80dff.jpg@1256w_838h_!web-article-pic.webp',
                  'https://i0.hdslb.com/bfs/article/35cdf5321b86b06e35f697517fb01ee49f07b48c.jpg@!web-article-pic.avif',
                  'https://i0.hdslb.com/bfs/article/5c9f2cf2d3389e089feeaec98038f64a417d3218.jpg@1256w_1884h_!web-article-pic.avif',
                  'https://i0.hdslb.com/bfs/article/f67825112fe7a9ec6f2d506fc227d303bb3b62a7.jpg@1256w_1676h_!web-article-pic.avif',
                  'https://i0.hdslb.com/bfs/article/e13ab20b823753e9d155f0d68567845e8b035072.jpg@1256w_1694h_!web-article-pic.avif',
                  'https://i0.hdslb.com/bfs/article/45607d69be3df58636533496fee594b5c6758f2d.jpg@1256w_1678h_!web-article-pic.avif',
                  'https://i0.hdslb.com/bfs/article/3a5a879000253183de3d32a8f68ae2c52b53d0de.jpg@1256w_1968h_!web-article-pic.avif',
                  'https://i0.hdslb.com/bfs/article/805ef17503170f19fff54c6bba596501783c045c.jpg@1256w_1676h_!web-article-pic.avif',
                  'https://i0.hdslb.com/bfs/article/d589f6d9c6abc66bd973baa8db2e80988756a9ea.jpg@1256w_838h_!web-article-pic.avif',
                  'https://i0.hdslb.com/bfs/article/8ebf020e52c3ca669833449899488cf41aa06b7d.gif@!web-article-pic.avif'
                ];
                Navigator.of(context).push(FadeRoute(
                    page: PhotoViewGalleryScreen(
                        images: imgList, //传入图片list
                        index: 0, //传入当前点击的图片的index
                        heroTag: '',
                        isFile: false)));
              },
              child: LoadImage(
                'https://i0.hdslb.com/bfs/article/5ce32eed0526dca1d159c50cbd36bb26d5a80dff.jpg@1256w_838h_!web-article-pic.webp',
                height: 200.h,
                width: double.infinity,
              ),
            )),
            Positioned(
                left: 20.w,
                top: 50.h,
                child: Row(
                  children: [
                    LoadImage(
                      (state.userEntity?.icon == null ||
                              state.userEntity!.icon!.isEmpty)
                          ? 'https://i0.hdslb.com/bfs/article/805ef17503170f19fff54c6bba596501783c045c.jpg@1256w_1676h_!web-article-pic.webp'
                          : state.userEntity?.icon ?? "",
                      width: 50.w,
                      height: 50.h,
                      radius: 100.r,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Text(
                        state.userEntity?.nickname ??
                            state.userEntity?.username ??
                            "未登录",
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w600))
                  ],
                )),
            Positioned(
                right: 15.w,
                top: 30.h,
                child: GestureDetector(
                  onTap: () {
                    navigateTo(context, const SettingPage());
                  },
                  child: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                )),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: InkWell(
                  onTap: () {
                    if (!state.isLogin! ?? false) {
                      navigateTo(context, const LoginPage());
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15.w),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.video_camera_back, color: Colors.red),
                        Text("-我喜欢的")
                      ],
                    ),
                  ),
                )),
          ],
        );
      },
    );
  }

  Widget mainWidget(state) {
    return RefreshConfiguration(
      headerTriggerDistance: 10,
      footerTriggerDistance: 0,
      enableBallisticLoad: false,
      headerBuilder: () => const RefreshHeader(),
      footerBuilder: () => const LoadingFooter(),
      child: Container(
        color: const Color(0xFFF3F4F8),
        child: SmartRefresher(
          physics: const BouncingScrollPhysics(),
          enablePullUp: true,
          enablePullDown: true,
          controller: refreshController,
          onRefresh: _onRefresh,
          onLoading: _onLoading,
          child: MyScrollView(children: [
            _buildUserInfo(),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              margin: EdgeInsets.symmetric(horizontal: 15.w),
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).myService,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  GridView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: 8,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        // 设置每子元素的大小（宽高比）
                        childAspectRatio: 1.2,
                        // 元素的左右的 距离
                        crossAxisSpacing: 20,
                        // 子元素上下的 距离
                        mainAxisSpacing: 0,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            const Text("data"),
                            SizedBox(
                              height: 5.h,
                            ),
                            const Icon(Icons.air_sharp)
                          ],
                        );
                      }),
                ],
              ),
            ),
            ListView.builder(
                padding: EdgeInsets.zero,
                cacheExtent: 20,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                controller: scrollController,
                reverse: false,
                itemCount: state.dataList.length,
                itemBuilder: (context, index) {
                  ProjectListEntity model = state.dataList[index];
                  return ProjectItem(model: model);
                })
          ]),
        ),
      ),
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
    //   itemBuilder: (ProjectListEntity model, int index) => Container(
    //     margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
    //     padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
    //     decoration: BoxDecoration(
    //         color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
    //     child: Column(
    //       children: [
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Text("作者:${model.author ?? model.shareUser ?? ""}",
    //                 style: TextStyle(color: Colors.black54, fontSize: 12.sp)),
    //             Text(
    //                 DateTime.fromMillisecondsSinceEpoch(model.publishTime ??
    //                         DateTime.now().millisecondsSinceEpoch)
    //                     .toString()
    //                     .substring(0, 19),
    //                 style: TextStyle(color: Colors.black54, fontSize: 12.sp)),
    //           ],
    //         ),
    //         SizedBox(
    //           height: 8.h,
    //         ),
    //         Row(
    //           children: [
    //             Expanded(
    //                 child: Text(
    //               model.desc ?? "",
    //               maxLines: 2,
    //               style: TextStyle(color: Colors.black, fontSize: 14.sp),
    //             ))
    //           ],
    //         ),
    //         SizedBox(
    //           height: 8.h,
    //         ),
    //         Row(
    //           children: [
    //             Text("${model.superChapterName}/${model.chapterName}",
    //                 style: TextStyle(color: Colors.black54, fontSize: 12.sp)),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocConsumer<MineCubit, MineState>(
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
