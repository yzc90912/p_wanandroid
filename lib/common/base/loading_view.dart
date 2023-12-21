import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class LoadingView extends StatelessWidget {
  final String? _message;

  const LoadingView({Key? key, String? message})
      : _message = message,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // const CupertinoActivityIndicator(radius: 20),
            Lottie.asset('assets/lottie/loading.json',
                width: 300.h, height: 300.h),
            const SizedBox(
              height: 10.0,
            ),
            Text(_message ?? 'Loading...'),
          ],
        ),
      ),
    );
  }
}
