import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:p_wanandroid/pages/tab/tab_page.dart';

import '../../../common/index.dart';
import 'navi_cubit.dart';
import 'navi_state.dart';

class NaviPage extends BasePage {
  const NaviPage({super.key});

  @override
  BasePageState<NaviPage> getState() => _NaviPageState();
}

class _NaviPageState extends BasePageState<NaviPage> {
  @override
  void initState() {
    isRenderHeader = false;
    NaviCubit cubit = context.read<NaviCubit>();
    cubit.getListData();
    super.initState();
  }

  Widget mainPageWidget(state) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: state.dataList.length,
        itemBuilder: (BuildContext context, int position) {
          return GestureDetector(
            onTap: () {
              navigateTo(
                  context,
                  TabPage(
                    systemEntity: state.dataList[position],
                  ));
            },
            child: Container(
                margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 234, 234, 234),
                    borderRadius: BorderRadius.circular(15.r)),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(state.dataList[position].name,
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 5.h,
                        ),
                        Wrap(
                          spacing: 9.w,
                          runSpacing: 9.w,
                          children: state.dataList[position].children!
                              .map<Widget>((e) => Text(e.name ?? ""))
                              .toList(),
                        )
                      ],
                    )),
                    SizedBox(
                      width: 8.w,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 18,
                    )
                  ],
                )),
          );
        });
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocBuilder<NaviCubit, NaviState>(
      builder: (context, state) {
        return resultWidget(
            state, (baseState, context) => mainPageWidget(state));
      },
    );
  }
}
