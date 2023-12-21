import 'package:flutter_bloc/flutter_bloc.dart';

import 'userinfo_event.dart';
import 'userinfo_state.dart';

class UserInfoBloc extends Bloc<UserInfoEvent, UserInfoState> {
  UserInfoBloc() : super(UserInfoState().init()) {
    on<ChangeAvatarEvent>(_changeAvatarEvent);
  }

  void _changeAvatarEvent(event, emit) {
    state.avatar = event.avatar;
    emit(state.clone());
  }
}
