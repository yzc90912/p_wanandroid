import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:p_wanandroid/generated/l10n.dart';
import 'package:p_wanandroid/pages/home/home_page.dart';
import 'package:p_wanandroid/pages/index/index_bloc.dart';
import 'package:p_wanandroid/pages/index/index_event.dart';
import 'package:p_wanandroid/pages/index/index_state.dart';
import 'package:p_wanandroid/pages/message/message_page.dart';
import 'package:p_wanandroid/pages/mine/mine_page.dart';
import 'package:p_wanandroid/pages/system/system_page.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  Widget _buildPage(context, state) {
    return Scaffold(
      body: IndexedStack(
        index: state.selectIndex,
        children: const [HomePage(), MessagePage(), SystemPage(), MinePage()],
      ),
      bottomNavigationBar: _buildBottomTab(context, state),
    );
  }

  Widget _buildBottomTab(context, state) {
    return BottomNavigationBar(
      selectedItemColor: const Color(0xffDD88CF), //主要用于设置item及字体颜色
      items: [
        BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 6.h),
              child: state.selectIndex == 0
                  ? SvgPicture.asset(
                      "assets/svg/home.svg",
                      width: 20.w,
                      height: 20.w,
                    )
                  : SvgPicture.asset(
                      "assets/svg/home_def.svg",
                      width: 20.w,
                      height: 20.w,
                    ),
            ),
            label: S.of(context).home),
        BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 6.h),
              child: state.selectIndex == 1
                  ? SvgPicture.asset(
                      "assets/svg/list.svg",
                      width: 20.w,
                      height: 20.w,
                    )
                  : SvgPicture.asset(
                      "assets/svg/list_def.svg",
                      width: 20.w,
                      height: 20.w,
                    ),
            ),
            label: S.of(context).cubit),
        BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 6.h),
              child: state.selectIndex == 1
                  ? SvgPicture.asset(
                      "assets/svg/system.svg",
                      width: 20.w,
                      height: 20.w,
                    )
                  : SvgPicture.asset(
                      "assets/svg/system_def.svg",
                      width: 20.w,
                      height: 20.w,
                    ),
            ),
            label: S.of(context).system),
        BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 6.h),
              child: state.selectIndex == 1
                  ? SvgPicture.asset(
                      "assets/svg/mine.svg",
                      width: 20.w,
                      height: 20.w,
                    )
                  : SvgPicture.asset(
                      "assets/svg/mine_def.svg",
                      width: 20.w,
                      height: 20.w,
                    ),
            ),
            label: S.of(context).mine),
      ],
      currentIndex: state.selectIndex ?? 0,
      onTap: (index) {
        if (state.selectIndex == index) {
          return;
        }
        BlocProvider.of<IndexBloc>(context).add(InitIndexEvent(index: index));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        return IndexBloc()..add(InitIndexEvent(index: 0));
      },
      child: BlocBuilder<IndexBloc, IndexState>(builder: (context, state) {
        return _buildPage(context, state);
      }),
    );
  }
}
