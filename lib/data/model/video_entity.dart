import 'package:isar/isar.dart';

part 'video_entity.g.dart';

@collection
class VideoEntity {
  Id dbId = Isar.autoIncrement; // 你也可以用 id = null 来表示 id 是自增的

  String? title;
  String? desc;
  String? authorName;
  String? playUrl;
  String? imageUrl;
  String? collectionCount;
}
