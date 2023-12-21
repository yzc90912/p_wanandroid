class IndexState {
  int? selectIndex;
  IndexState init() {
    return IndexState()..selectIndex = selectIndex;
  }

  IndexState clone() {
    return IndexState()..selectIndex = selectIndex;
  }
}
