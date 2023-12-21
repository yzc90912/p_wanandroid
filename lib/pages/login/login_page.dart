import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:p_wanandroid/pages/mine/user_cubit.dart';

import '../../common/index.dart';
import '../../widget/index.dart';
import 'login_bloc.dart';

class LoginPage extends BasePage {
  const LoginPage({super.key});

  @override
  BasePageState<BasePage> getState() {
    return _LoginPage();
  }
}

class _LoginPage extends BasePageState<LoginPage> {
  /// 隐藏返回按钮
  @override
  Widget left() {
    return const Icon(Icons.arrow_back_ios);
  }

  @override
  void initState() {
    super.initState();
    pageTitle = 'login';
    pageBgColor = const Color(0xFFF3F4F8);
    // isRenderHeader = false;
    // isBack = false;
    // Future.delayed(const Duration(milliseconds: 100)).then((value) async {
    //   StatusBarControl.setStyle(StatusBarStyle.DARK_CONTENT);
    // });
  }

  /// 标题
  Widget titleWidget() {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Text(
        '欢迎来到P_Wandroid',
        style: TextStyle(
            color: Colors.black, fontSize: 30.sp, fontWeight: FontWeight.w500),
      ),
    );
  }

  /// 输入框
  Widget inputWidget(int type) {
    /// type:1 输入电话号码 type:2 输入密码
    return BlocBuilder<LoginBloc, LoginState>(
      /// 当输入的电话号码和上次输入的不一样时 刷新 电话号码widget 不刷新密码widget
      /// 当输入的密码和上次输入的不一样时 刷新 密码widget 不刷新电话号码widget
      buildWhen: (previous, current) {
        if (type == 1) {
          return previous.phoneNumber != current.phoneNumber;
        } else {
          return previous.password != current.password;
        }
      },
      builder: (context, state) {
        return Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          margin: EdgeInsets.only(bottom: 30.h),
          decoration: BoxDecoration(
              color: const Color(0xFFF3F4F8),
              border: Border.all(color: Colors.black12, width: 1.w),
              borderRadius: BorderRadius.circular(30.h)),
          height: 50.h,
          child: TextField(
            autofocus: true,
            textAlign: TextAlign.start,
            keyboardType: TextInputType.number,
            onChanged: (value) {
              if (type == 1) {
                BlocProvider.of<LoginBloc>(context).add(
                  CommitPhoneEvent(value),
                );
              } else {
                BlocProvider.of<LoginBloc>(context).add(
                  CommitPasswordEvent(value),
                );
              }
            },
            decoration: InputDecoration(
              hintStyle:
                  TextStyle(fontSize: 15.sp, color: const Color(0xFFCCCCCC)),
              counterText: "",
              isCollapsed: true,
              border: InputBorder.none,
              hintText: type == 1 ? '请输入电话号码' : '请输入密码',
            ),
          ),
        );
      },
    );
  }

  /// 提交按钮
  Widget commitBtn() {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        print(state.password);
        print(state.phoneNumber);
        return DelayButton(
          width: 1.sw - 36.w,
          height: 50.h,
          alignment: Alignment.center,
          mainWidget: Text('登录',
              style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w600)),
          decoration: BoxDecoration(
              color: (state.password ?? '').isNotEmpty &&
                      (state.phoneNumber ?? '').isNotEmpty
                  ? const Color(0xFF102FA5)
                  : const Color(0xFFB6C0E4),
              borderRadius: BorderRadius.circular(22.h),
              border: Border.all(color: Colors.transparent, width: 1)),
          onTap: () async {
            var result = await BlocProvider.of<LoginBloc>(context).login();
            if (result != null) {
              BlocProvider.of<UserCubit>(context).updateUserInfo(result);
              Navigator.of(context).pop();
            }
          },
        );
      },
    );
  }

  @override
  Widget buildPage(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 140.h),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [titleWidget(), inputWidget(1), inputWidget(2), commitBtn()],
      ),
    );
  }
}
