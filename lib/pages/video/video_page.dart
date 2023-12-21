import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:p_wanandroid/common/index.dart';
import 'package:p_wanandroid/pages/video/video_detail_page.dart';
import 'package:p_wanandroid/widget/image/load_image.dart';

import 'video_cubit.dart';
import 'video_state.dart';

class VideoPage extends BasePage {
  const VideoPage({super.key});

  @override
  BasePageState<VideoPage> getState() => _VideoPageState();
}

class _VideoPageState extends BasePageState<VideoPage> {
  Widget mainWidget(state) {
    return MasonryGridView.count(
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
              navigateTo(context,
                  VideoDetailPage(index: index, videoDataList: state.dataList));
            },
            child: LoadImage(
              state.dataList[index].imageUrl,
              radius: 10.r,
            ),
          );
        });
  }

  @override
  void initState() {
    super.initState();
    isRenderHeader = false;
    VideoCubit cubit = context.read<VideoCubit>();
    cubit.getListData();
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocBuilder<VideoCubit, VideoState>(
      builder: (context, state) {
        return resultWidget(state, (baseState, context) => mainWidget(state),
            refreshMethod: () {});
      },
    );
  }
}
