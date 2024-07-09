import 'package:freezed_annotation/freezed_annotation.dart';

part 'slider_response.g.dart';

part 'slider_response.freezed.dart';


@freezed
class SliderResponse with _$SliderResponse {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory SliderResponse(bool? success,
      String? message,
      int? code,
      GetAllSliderData? data,
      )=_SliderResponse;

  factory SliderResponse.fromJson(Map<String, dynamic> json) => _$SliderResponseFromJson(json);
}

@freezed
class GetAllSliderData with _$GetAllSliderData{
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory GetAllSliderData(
      List<GetSliderData>? data
      )=_GetAllSliderData;

  factory GetAllSliderData.fromJson(Map<String, dynamic> json) => _$GetAllSliderDataFromJson(json);

}

@freezed
class GetSliderData with _$GetSliderData{
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory GetSliderData(
      int? id,
      String? link,
      String? title,
      String? imageWeb,
      String? imageMobileWeb,
      )=_GetSliderData;
  factory GetSliderData.fromJson(Map<String, dynamic> json) => _$GetSliderDataFromJson(json);
}