#!/bin/bash
flutter pub add freezed_annotation
flutter pub add --dev build_runner
flutter pub add --dev freezed

# 如果你要使用 freezed 来生成 fromJson/toJson，则执行：
flutter pub add json_annotation
flutter pub add --dev json_serializable

# 常用必备组件
flutter pub add dio
flutter pub add pretty_dio_logger
flutter pub add cookie_jar
#retrofit请求
flutter pub add retrofit
flutter pub add --dev retrofit_generator
#图片
flutter pub add cached_network_image
#屏幕适配
flutter pub add flutter_screenutil
#刷新加载
flutter pub add pull_to_refresh
#bloc状态管理
flutter pub add flutter_bloc
#mmkv
flutter pub add mmkv
#国际化

#path
flutter pub add path_provider
#svg
flutter pub add flutter_svg
#easy_loading
flutter pub add flutter_easyloading
#ui
flutter pub add bruno

flutter pub add lottie

flutter pub add status_bar_control
#数据库
flutter pub add isar isar_flutter_libs
flutter pub add -d isar_generator build_runner

#webview
flutter pub add webview_flutter
#滑动评论底部弹出
flutter pub add sliding_up_panel
#瀑布流
flutter pub add flutter_staggered_grid_view
#videoplayer
flutter pub add video_player
flutter pub add safemap
flutter pub add keyboard_actions
#图片预览
flutter pub add photo_view
flutter pub add photo_manager
flutter pub add wechat_assets_picker
flutter pub add wechat_camera_picker
flutter pub add flutter_image_compress
flutter pub add video_compress
#权限
flutter pub add permission_handler
#拖拽
flutter pub add flutter_reorderable_grid_view