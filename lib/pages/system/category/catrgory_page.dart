import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:p_wanandroid/pages/system/category/category_bloc.dart';
import 'package:p_wanandroid/pages/system/category/category_event.dart';
import 'package:p_wanandroid/pages/system/category/category_state.dart';

import '../../../common/index.dart';
import '../../web/web_page.dart';

class CategoryPage extends BasePage {
  const CategoryPage({super.key});

  @override
  BasePageState<CategoryPage> getState() => _CategoryPageState();
}

class _CategoryPageState extends BasePageState<CategoryPage> {
  @override
  void initState() {
    isRenderHeader = false;
    CategoryBloc cubit = context.read<CategoryBloc>();
    cubit.getCategoryData();
    super.initState();
  }

  Widget mainPageWidget(state) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: state.dataList.length,
              itemBuilder: (BuildContext context, int position) {
                BorderRadius borderRadius;
                if (state.currentIndex == position) {
                  borderRadius = BorderRadius.only(
                      topRight: Radius.circular(10.r),
                      bottomRight: Radius.circular(10.r));
                } else {
                  if (position == state.currentIndex + 1) {
                    borderRadius = BorderRadius.only(
                      topRight: Radius.circular(10.r),
                    );
                  } else if (position == state.currentIndex - 1) {
                    borderRadius = BorderRadius.only(
                      bottomRight: Radius.circular(10.r),
                    );
                  } else {
                    borderRadius = BorderRadius.zero;
                  }
                }

                return GestureDetector(
                  onTap: () {
                    BlocProvider.of<CategoryBloc>(context).add(
                      ChangeCategoryEvent(
                          currentIndex: position,
                          articles: state.dataList![position].articles!),
                    );
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: state.currentIndex == position
                              ? Colors.transparent
                              : const Color.fromRGBO(234, 234, 236, 1),
                          borderRadius: borderRadius),
                      padding: EdgeInsets.symmetric(
                          vertical: 12.h, horizontal: 10.w),
                      margin: EdgeInsets.only(top: 1.h),
                      child: Text(
                        state.dataList[position].name ?? "",
                        style: TextStyle(
                          color: state.currentIndex == position
                              ? const Color(0xffDD88CF)
                              : Colors.black,
                          fontWeight: state.currentIndex == position
                              ? FontWeight.w600
                              : FontWeight.normal,
                          fontSize:
                              state.currentIndex == position ? 14.sp : 13.sp,
                        ),
                      )),
                );
              }),
        ),
        Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
              child: Wrap(
                spacing: 9.w,
                runSpacing: 9.w,
                children: state.articles!
                    .map<Widget>((e) => GestureDetector(
                          onTap: () {
                            navigateTo(
                                context,
                                WebPage(
                                  title: e.title,
                                  url: e.link,
                                  articleId: e.id,
                                ));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 5.h),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 238, 201, 201),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Text(e.title ?? ""),
                          ),
                        ))
                    .toList(),
              ),
            )),
      ],
    );
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return resultWidget(
            state, (baseState, context) => mainPageWidget(state));
      },
    );
  }
}
