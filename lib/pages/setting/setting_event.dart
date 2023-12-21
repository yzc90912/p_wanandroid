abstract class SettingEvent {}

class ChangeThemeEvent extends SettingEvent {
  ChangeThemeEvent(this.isDark);

  final bool isDark;
}
