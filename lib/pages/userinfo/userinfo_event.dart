abstract class UserInfoEvent {}

class ChangeAvatarEvent extends UserInfoEvent {
  final String avatar;
  ChangeAvatarEvent(this.avatar);
}
