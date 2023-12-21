import 'package:json_annotation/json_annotation.dart';

part 'api_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ApiResponse<T> {
  final String? msg;
  final int? code;
  final int? errorCode;
  final String? errorMsg;
  final T? data;
  final String? status;

  ApiResponse(
      {required this.msg,
      required this.code,
      this.data,
      this.status,
      this.errorCode,
      this.errorMsg});

  bool get isSuccess => status == "success" || errorCode == 0;

  // ResponseStatus get responseStatus => _responseStatus;

  // ResponseStatus get _responseStatus {
  //   if (code == null) {
  //     return ResponseStatus.loading;
  //   } else if (code == 200) {
  //     if (data != null) {
  //       return ResponseStatus.successHasContent;
  //     } else {
  //       return ResponseStatus.successNoData;
  //     }
  //   } else {
  //     return ResponseStatus.fail;
  //   }
  // }

  factory ApiResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ApiResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$ApiResponseToJson(this, toJsonT);
}
