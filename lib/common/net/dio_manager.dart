import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:p_wanandroid/common/net/w_service.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'api_service.dart';

class DioManager {
  static DioManager? _instance;

  static DioManager getInstance() {
    _instance ??= DioManager._internal();
    return _instance!;
  }

  static const timeout = 60000000;
  DioManager._internal();

  final Dio _dio = Dio(BaseOptions(
    connectTimeout: const Duration(microseconds: timeout), // 设置连接超时时间为 5 秒
    receiveTimeout: const Duration(microseconds: timeout), // 设置接收超时时间为 3 秒
    headers: {}, // 设置请求头信息
  ));
  // .addPrettyPrint;

  late MPService _androidService;
  MPService get androidService => _androidService;

  late WanService _wanService;
  WanService get wanService => _wanService;

  void init() async {
    var logger = LogInterceptor(responseBody: true, requestBody: true);
    // _dio.interceptors.add(logger);
    final Directory appDocDir = await getApplicationDocumentsDirectory();
    final String appDocPath = appDocDir.path;
    final cookieJar = PersistCookieJar(
      ignoreExpires: true,
      storage: FileStorage("$appDocPath/.cookies/"),
    );
    // _dio.interceptors.add(CookieManager(cookieJar));
    // _dio.interceptors.add(AuthInterCeptor());
    // _dio.interceptors.add(ErrorInterceptor());
    // _dio.httpClientAdapter = IOHttpClientAdapter()
    //   ..onHttpClientCreate = (client) {
    //     // Config the client.
    //     client.findProxy = (uri) {
    //       // Forward all request to proxy "localhost:8888".
    //       return 'PROXY 192.168.1.32:8888';
    //     };
    //     client.badCertificateCallback =
    //         (X509Certificate cert, String host, int port) => true; //忽略证书
    //     return client;
    //   };
    _androidService = MPService(_dio);
    _wanService = WanService(_dio);
  }
}

extension AddPrettyPrint on Dio {
  Dio get addPrettyPrint {
    interceptors.add(
      PrettyDioLogger(
        requestHeader: false,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        compact: false,
      ),
    );
    return this;
  }
}

MPService get androidService => DioManager.getInstance().androidService;
WanService get wanService => DioManager.getInstance().wanService;
