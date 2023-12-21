import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p_wanandroid/common/index.dart';
import 'package:p_wanandroid/pages/message/deatil/message_detail_cubit.dart';
import 'package:p_wanandroid/pages/message/deatil/message_detail_state.dart';
import 'package:status_bar_control/status_bar_control.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MessageDetailPage extends BasePage {
  const MessageDetailPage({super.key, required this.entityId});

  final int entityId;

  @override
  BasePageState<MessageDetailPage> getState() => _MessageDetailPageState();
}

class _MessageDetailPageState extends BasePageState<MessageDetailPage> {
  @override
  void initState() {
    super.initState();
    isRenderHeader = false;
    pageBgColor = const Color(0xFFF3F4F8);

    Future.delayed(const Duration(milliseconds: 100)).then((value) async {
      StatusBarControl.setStyle(StatusBarStyle.DARK_CONTENT);
    });
    _getData();
  }

  /// 请求数据
  _getData() {
    MessageDetailCubit cubit = context.read<MessageDetailCubit>();
    cubit.getDetailData(widget.entityId);
  }

  Widget mainWidget(state) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: statusBarH),
            child: WebViewWidget(
              controller: controller,
            ),
          ),
        ),
        // const Positioned(child: ArticleNavWidget()),
        // Positioned(
        //     bottom: bottomSafeBarH,
        //     child: ArticleTooWidget(
        //       model: state.model!,
        //     ))
      ],
    );
  }

  late WebViewController controller;
  late NavigationDelegate _navigationDelegate;

  String css =
      'video{width:100%}p{color:#344058;font-size:15px;line-height:27px}a{color:#344058;text-decoration:none}img{margin-top:12px;margin-bottom:12px;width:100%;height:auto}span{letter-spacing:1px}';
  void initWeb(state) {
    _navigationDelegate = NavigationDelegate(
      onPageFinished: (url) {
        // var originalHeight = controller
        //     .runJavaScriptReturningResult("document.body.offsetHeight;");
        // print(controller
        //     .runJavaScriptReturningResult("document.body.offsetHeight;"));
        // double _originalHeight = double.parse(originalHeight.toString());
        // widget.backHeight(_originalHeight);
      },
      onPageStarted: (url) {},
      onProgress: (int progress) {
        print("WebView is loading (progress : $progress%)");
      },
    );

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(_navigationDelegate)
      ..addJavaScriptChannel("flutterMessage",
          onMessageReceived: (JavaScriptMessage message) {});
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      String htms = """
   <!DOCTYPE html>
        <html>
      <head>
  <meta charset='UTF-8' />
  <meta http-equiv='X-UA-Compatible' content='IE=edge' />
  <meta name='viewport' content='width=device-width, initial-scale=1.0' />
  <style>$css</style>
  </head> 
  <body>
  ${state.data!.newsContent}
  </body>
   <script type="text/javascript">
        const resizeObserver = new ResizeObserver(entries =>
        flutterMessage.postMessage(document.body.scrollHeight.toString()));
        resizeObserver.observe(document.body);
      </script>
  </html>
        
  """;
      controller.loadHtmlString(htms);
      print(htms);
    });
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocBuilder<MessageDetailCubit, MessageDetailState>(
        builder: (context, state) {
      return resultWidget(state, (baseState, context) {
        initWeb(state);
        return mainWidget(state);
      }, refreshMethod: () {
        _getData();
      });
    });
  }
}
