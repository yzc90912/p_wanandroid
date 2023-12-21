import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:p_wanandroid/widget/image/image_util.dart';

/// 图片加载（支持本地与网络图片）
class LoadImage extends StatelessWidget {
  const LoadImage(this.image,
      {super.key,
      this.width,
      this.height,
      this.fit = BoxFit.cover,
      this.format = ImageFormat.png,
      this.holderImg = 'none',
      this.cacheWidth,
      this.cacheHeight,
      this.radius = 0,
      this.isFile = false,
      this.iconColor,
      this.borderRadius,
      this.holderWidget});

  final String image;
  final double? width;
  final double? height;
  final BoxFit fit;
  final ImageFormat format;
  final String holderImg;
  final Widget? holderWidget;
  final int? cacheWidth;
  final int? cacheHeight;
  final double? radius;
  final bool? isFile;
  final Color? iconColor;

  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    if (image.isEmpty || image.startsWith('http')) {
      final Widget holder =
          LoadAssetImage(holderImg, height: height, width: width, fit: fit);
      return ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.circular(radius ?? 0),
        child: CachedNetworkImage(
          imageUrl: image,
          placeholder: (_, __) => holder,
          errorWidget: (_, __, dynamic error) => holder,
          width: width,
          height: height,
          fit: fit,
          memCacheWidth: cacheWidth,
          memCacheHeight: cacheHeight,
        ),
      );
    } else {
      if (isFile!) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(radius ?? 0),
          child: Image.file(
            File(image),
            height: height,
            width: width,
            fit: fit,
            cacheWidth: cacheWidth,
            cacheHeight: cacheHeight,
          ),
        );
      } else {
        return ClipRRect(
          borderRadius: BorderRadius.circular(radius ?? 0),
          child: LoadAssetImage(
            image,
            height: height,
            width: width,
            fit: fit,
            format: format,
            cacheWidth: cacheWidth,
            cacheHeight: cacheHeight,
            color: iconColor,
          ),
        );
      }
    }
  }
}

/// 加载本地资源图片
class LoadAssetImage extends StatelessWidget {
  const LoadAssetImage(this.image,
      {super.key,
      this.width,
      this.height,
      this.cacheWidth,
      this.cacheHeight,
      this.fit,
      this.format = ImageFormat.png,
      this.holderWidget,
      this.color});

  final String image;
  final double? width;
  final double? height;
  final int? cacheWidth;
  final int? cacheHeight;
  final BoxFit? fit;
  final ImageFormat format;
  final Color? color;
  final Widget? holderWidget;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageUtils.getImgPath(image, format: format),
      height: height,
      width: width,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
      fit: fit,
      color: color,

      /// 忽略图片语义
      excludeFromSemantics: true,
    );
  }
}
