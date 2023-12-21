import 'package:p_wanandroid/data/model/video_entity.dart';

import '../../common/index.dart';

class VideoState extends BaseState<VideoEntity> {
  VideoState init() {
    return VideoState()
      ..netState = NetState.loadingState
      ..isNoMoreDataState = false
      ..isNetWorkFinish = false
      ..dataList = []
      ..netLoadCount = 0;
  }

  VideoState clone() {
    return VideoState()
      ..netState = netState
      ..isNoMoreDataState = isNoMoreDataState
      ..isNetWorkFinish = isNetWorkFinish
      ..dataList = dataList
      ..netLoadCount = netLoadCount;
  }
}
