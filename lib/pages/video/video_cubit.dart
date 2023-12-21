import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';
import 'package:p_wanandroid/data/model/video_entity.dart';
import 'package:p_wanandroid/pages/video/video_state.dart';
import 'package:path_provider/path_provider.dart';

import '../../common/base/index.dart';
import '../../common/utils/utils.dart';

class VideoCubit extends Cubit<VideoState> {
  VideoCubit() : super(VideoState().init());

  /// 获取数据
  Future<void> getListData() async {
    /// 复制一个新的对象
    var nerStates = state.clone();
    // XsEasyLoading.showLoading();
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open([VideoEntitySchema],
        directory: dir.path, name: "video");
    var list = await isar.videoEntitys.where().findAll();
    if (list.isEmpty) {
      String jsonData = await loadJsonFromAssets('assets/json/video_list.json');
      List list = json.decode(jsonData);
      List<VideoEntity> datas = [];
      for (var item in list) {
        await isar.writeTxn(() async {
          var data = VideoEntity()
            ..title = item["title"]
            ..desc = item["desc"]
            ..authorName = item["authorName"]
            ..playUrl = item["playUrl"]
            ..imageUrl = item["imageUrl"]
            ..collectionCount = item["collectionCount"];
          datas.add(data);
          await isar.videoEntitys.put(data); // 将新用户数据写入到 Isar
        });
        nerStates.dataList = datas;
      }
    } else {
      nerStates.dataList = list;
    }
    nerStates.netState = NetState.dataSuccessState;
    emit(nerStates);
  }
}
