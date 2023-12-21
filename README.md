windows 下添加可执行文件 icacls "pub-add.ps1" 执行 ./pub-add.ps1
mac 下添加可执行文件 chmod +x "pub-add.sh" 执行 。/pub-add.sh

freezed 代码生成
dart run build_runner build
retrofit isar 代码生成
flutter pub run build_runner build
flutter packages pub run build_runner build --delete-conflicting-outputs
// 该命令监听输入，可以实时编译最新的代码，不用每次修改之后重复使用 build 了
flutter pub run build_runner watch




