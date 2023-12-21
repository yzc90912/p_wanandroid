abstract class IndexEvent {}

class InitIndexEvent extends IndexEvent {
  final int index;

  InitIndexEvent({required this.index});
}
