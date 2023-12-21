import 'package:bruno/bruno.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:p_wanandroid/common/index.dart';
import 'package:p_wanandroid/pages/userinfo/userinfo_bloc.dart';
import 'package:p_wanandroid/pages/userinfo/userinfo_event.dart';
import 'package:p_wanandroid/pages/userinfo/userinfo_state.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';
import 'package:wechat_camera_picker/wechat_camera_picker.dart';

import '../../generated/l10n.dart';
import '../../widget/index.dart';
import '../mine/user_cubit.dart';
import '../mine/user_state.dart';

class UserInfoPage extends BasePage {
  const UserInfoPage({super.key});

  @override
  BasePageState<UserInfoPage> getState() => _UserInfoPageState();
}

class _UserInfoPageState extends BasePageState<UserInfoPage> {
  List<BrnCommonActionSheetItem> actions = [];

  @override
  void initState() {
    // pageBgColor = const Color(0xFFF3F4F8);
    Future.delayed(Duration.zero, () {
      pageTitle = S.of(context).userInfo;
    });
    // actions.add(BrnCommonActionSheetItem(
    //   '选项一（警示项）',
    //   actionStyle: BrnCommonActionSheetItemStyle.alert,
    // ));
    actions.add(BrnCommonActionSheetItem(
      '相册',
      actionStyle: BrnCommonActionSheetItemStyle.normal,
    ));
    actions.add(BrnCommonActionSheetItem(
      '相机',
      actionStyle: BrnCommonActionSheetItemStyle.normal,
    ));
    super.initState();
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocBuilder<UserInfoBloc, UserInfoState>(
      builder: (infocontext, state) {
        return BlocBuilder<UserCubit, UserState>(
            builder: (userContext, userState) {
          return Column(
            children: [
              SettingBar(
                leftTitle: S.of(context).avatar,
                rightIcon: LoadImage(
                  state.avatar != null
                      ? state.avatar!
                      : (userState.userEntity?.icon == null ||
                              userState.userEntity!.icon!.isEmpty)
                          ? 'https://i0.hdslb.com/bfs/article/805ef17503170f19fff54c6bba596501783c045c.jpg@1256w_1676h_!web-article-pic.webp'
                          : userState.userEntity?.icon ?? "",
                  isFile: state.avatar != null,
                  height: 50.h,
                  width: 50.w,
                  radius: 100.r,
                ),
                onClick: () {
                  // 展示actionSheet
                  showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (BuildContext context) {
                        return BrnCommonActionSheet(
                          actions: actions,
                          clickCallBack: (
                            int index,
                            BrnCommonActionSheetItem actionEle,
                          ) async {
                            // String title = actionEle.title;
                            // BrnToast.show("title: $title, index: $index", context);
                            switch (index) {
                              case 0:
                                // 相册
                                final status =
                                    await Permission.storage.request();
                                if (status == PermissionStatus.granted) {
                                  List<AssetEntity>? result =
                                      await AssetPicker.pickAssets(
                                    context,
                                    pickerConfig: const AssetPickerConfig(),
                                  );
                                  if (result != null && result.isNotEmpty) {
                                    var file = await result[0].file;
                                    BlocProvider.of<UserInfoBloc>(infocontext)
                                        .add(
                                      ChangeAvatarEvent(file?.path ?? ""),
                                    );
                                  }
                                } else {
                                  ToastUtil.toast(content: "暂未获取读写权限");
                                }
                                break;
                              case 1:
                                // 相机
                                final status =
                                    await Permission.camera.request();
                                if (status == PermissionStatus.granted) {
                                  final AssetEntity? entity =
                                      await CameraPicker.pickFromCamera(
                                    context,
                                    pickerConfig: const CameraPickerConfig(),
                                  );
                                  if (entity != null) {
                                    var file = await entity.file;
                                    BlocProvider.of<UserInfoBloc>(infocontext)
                                        .add(
                                      ChangeAvatarEvent(file?.path ?? ""),
                                    );
                                  }
                                } else {
                                  ToastUtil.toast(content: "暂未获取相机权限");
                                }
                                break;
                              default:
                            }
                          },
                        );
                      });
                },
              )
            ],
          );
        });
      },
    );
  }
}
