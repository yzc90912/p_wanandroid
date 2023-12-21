/// BaseState
/// 项目中所有需要根据网络状态显示页面的state必须继承于BaseState
enum NetState {
  /// 初始状态
  initializeState,

  /// 加载状态
  loadingState,

  /// 错误状态,显示失败界面
  error404State,

  /// 错误状态,显示刷新按钮
  errorShowRefresh,

  /// 空数据状态
  emptyDataState,

  /// 加载超时
  timeOutState,

  /// 数据获取成功状态
  dataSuccessState,
}

abstract class BaseState<D> {
  /// 页面状态
  NetState netState = NetState.loadingState;

  /// 是否还有更多数据
  bool? isNoMoreDataState;

  /// 数据是否请求完成
  bool? isNetWorkFinish;

  D? data;

  /// 数据源
  List<D>? dataList = [];

  /// 网络加载次数 用这个属性判断 BlocConsumer 是否需要监听刷新数据
  int netLoadCount = 0;
}
