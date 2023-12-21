import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p_wanandroid/pages/index/index_event.dart';
import 'package:p_wanandroid/pages/index/index_state.dart';

class IndexBloc extends Bloc<IndexEvent, IndexState> {
  IndexBloc() : super(IndexState().init()) {
    on<InitIndexEvent>(_initIndexEvent);
  }

  void _initIndexEvent(InitIndexEvent event, Emitter<IndexState> emit) {
    state.selectIndex = event.index;
    emit(state.clone());
  }
}
