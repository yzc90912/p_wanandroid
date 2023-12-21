import 'package:json_annotation/json_annotation.dart';

part 'page_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class PageModel<T> {
  final int? pageCount;
  final int? total;
  final int? size;
  final int? offset;
  final int? code;
  final int? curPage;
  final bool? over;
  final List<T>? datas;
  final List<T>? data;

  PageModel(
      {this.pageCount,
      this.size,
      this.total,
      this.code,
      this.offset,
      this.curPage,
      this.over,
      this.data,
      this.datas});

  bool get isSuccess => code == 200;

  // ResponseStatus get responseStatus => _responseStatus;

  // ResponseStatus get _responseStatus {
  //   if (code == null) {
  //     return ResponseStatus.loading;
  //   } else if (code == 200) {
  //     if (rows != null) {
  //       if (rows!.isNotEmpty) {
  //         return ResponseStatus.successHasContent;
  //       } else {
  //         return ResponseStatus.successNoData;
  //       }
  //     }
  //   } else {
  //     return ResponseStatus.fail;
  //   }
  //   return ResponseStatus.loading;
  // }

  factory PageModel.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$PageModelFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$PageModelToJson(this, toJsonT);
}
