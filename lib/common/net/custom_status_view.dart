// import 'package:base_module/index.dart';
// import 'package:flutter/material.dart';
// import 'package:net_module/index.dart';

// typedef WidgetCallback = Widget Function();

// /// 响应View,这个view和网络请求的回调紧密联系,是我经过几次思考后得出的方案
// class CustomStatusView extends StatelessWidget {
//   final WidgetCallback contentBuilder;

//   const CustomStatusView(
//       {Key? key,
//       required this.status,
//       required this.contentBuilder,
//       this.emptyText,
//       this.showMore,
//       this.retryAction})
//       : super(key: key);
//   final String? emptyText;
//   final Widget? showMore;
//   final VoidCallback? retryAction;
//   final ResponseStatus status;
//   @override
//   Widget build(BuildContext context) {
//     return IndexedStack(
//       index: status.value,
//       children: [
//         const LoadingView(),
//         ErrorView(
//           retryAction: retryAction ?? () {},
//         ),
//         contentBuilder(),
//         EmptyView(
//           emptyText: emptyText,
//           showMore: showMore,
//         ),
//       ],
//     );
//   }
// }
