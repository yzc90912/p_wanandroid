import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:p_wanandroid/data/model/video_entity.dart';
import 'package:p_wanandroid/pages/video/tikTokVideo.dart';
import 'package:p_wanandroid/widget/image/load_image.dart';
import 'package:safemap/safemap.dart';
import 'package:video_player/video_player.dart';

import '../../common/utils/physics.dart';
import 'tikTokVideoListController.dart';

class VideoDetailPage extends StatefulWidget {
  const VideoDetailPage(
      {super.key, required this.index, required this.videoDataList});
  final int index;
  final List<VideoEntity> videoDataList;

  @override
  State<VideoDetailPage> createState() => _VideoDetailPageState();
}

class _VideoDetailPageState extends State<VideoDetailPage>
    with WidgetsBindingObserver, TickerProviderStateMixin {
  final PageController _pageController = PageController();
  final TikTokVideoListController _videoListController =
      TikTokVideoListController();

  /// 会重复播放的控制器
  late final AnimationController _repeatController;

  /// 线性动画
  late final Animation<double> _animation;

  /// 记录点赞
  Map<int, bool> favoriteMap = {};

  @override
  void initState() {
    // videoDataList = UserVideo.fetchVideo();
    WidgetsBinding.instance.addObserver(this);
    _videoListController.init(
      pageController: _pageController,
      initialList: widget.videoDataList
          .map(
            (e) => VPVideoController(
              videoInfo: e,
              builder: () =>
                  VideoPlayerController.networkUrl(Uri.parse(e.playUrl!)),
            ),
          )
          .toList(),
      videoProvider: (int index, List<VPVideoController> list) async {
        return widget.videoDataList
            .map(
              (e) => VPVideoController(
                videoInfo: e,
                builder: () =>
                    VideoPlayerController.networkUrl(Uri.parse(e.playUrl!)),
              ),
            )
            .toList();
      },
    );
    _videoListController.addListener(() {
      setState(() {});
    });

    /// 动画持续时间是 3秒，此处的this指 TickerProviderStateMixin
    _repeatController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat(); // 设置动画重复播放

    // 创建一个从0到360弧度的补间动画 v * 2 * π
    _animation = Tween<double>(begin: 0, end: 1).animate(_repeatController);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      key: const Key('home'),
      physics: const QuickerScrollPhysics(),
      controller: _pageController,
      scrollDirection: Axis.vertical,
      itemCount: _videoListController.videoCount,
      itemBuilder: (context, i) {
        double a = MediaQuery.of(context).size.aspectRatio;
        bool hasBottomPadding = a < 0.55;
        // 拼一个视频组件出来
        bool isF = SafeMap(favoriteMap)[i].boolean;
        var player = _videoListController.playerOfIndex(i)!;
        var data = player.videoInfo!;
        // 右侧按钮列
        // Widget buttons = TikTokButtonColumn(
        //   isFavorite: isF,
        //   onAvatar: () {
        //     tkController.animateToPage(TikTokPagePositon.right);
        //   },
        //   onFavorite: () {
        //     setState(() {
        //       favoriteMap[i] = !isF;
        //     });
        //     // showAboutDialog(context: context);
        //   },
        //   onComment: () {
        //     CustomBottomSheet.showModalBottomSheet(
        //       backgroundColor: Colors.white.withOpacity(0),
        //       context: context,
        //       builder: (BuildContext context) => TikTokCommentBottomSheet(),
        //     );
        //   },
        //   onShare: () {},
        // );
        // video
        Widget currentVideo = Center(
          child: AspectRatio(
            aspectRatio: player.controller.value.aspectRatio,
            child: VideoPlayer(player.controller),
          ),
        );

        currentVideo = TikTokVideoPage(
          // 手势播放与自然播放都会产生暂停按钮状态变化，待处理
          hidePauseIcon: !player.showPauseIcon.value,
          aspectRatio: 9 / 16.0,
          key: Key('${data.playUrl!}$i'),
          tag: data.playUrl,
          bottomPadding: hasBottomPadding ? 16.0 : 16.0,
          userInfoWidget: VideoUserInfo(
            desc: data.desc,
            bottomPadding: hasBottomPadding ? 16.0 : 50.0,
          ),
          onSingleTap: () async {
            if (player.controller.value.isPlaying) {
              await player.pause();
            } else {
              await player.play();
            }
            setState(() {});
          },
          onAddFavorite: () {
            setState(() {
              // favoriteMap[i] = true;
            });
          },
          rightButtonColumn: RotationTransition(
            turns: _animation,
            child: LoadImage(
                'https://i0.hdslb.com/bfs/new_dyn/78fb3c27d52ea7b36b6763819f873447370057379.jpg@progressive.webp',
                width: 50.w,
                height: 50.w,
                fit: BoxFit.cover,
                borderRadius: const BorderRadius.all(Radius.circular(50.0))),
          ),
          video: currentVideo,
        );
        return currentVideo;
      },
    );
  }
}
