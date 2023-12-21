import 'package:json_annotation/json_annotation.dart';

part 'single_page_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class SinglePageModel<T> {
  final int? totalPage;
  final int? total;
  final int? currentPage;
  final String? msg;
  final int? code;
  final List<T>? data;

  SinglePageModel(
      {this.totalPage,
      this.currentPage,
      this.total,
      this.code,
      this.msg,
      this.data});

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

  factory SinglePageModel.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$SinglePageModelFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$SinglePageModelToJson(this, toJsonT);
}
