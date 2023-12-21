import 'package:p_wanandroid/common/index.dart';
import 'package:p_wanandroid/data/model/message_detail_entity.dart';

class MessageDetailState extends BaseState<MessageDetailEntity> {
  MessageDetailState init() {
    return MessageDetailState()
      ..netState = NetState.loadingState
      ..data = const MessageDetailEntity();
  }

  MessageDetailState clone() {
    return MessageDetailState()
      ..netState = netState
      ..data = data;
  }
}
