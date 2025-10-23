import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reuse/features/home/data/models/responses/post_list_response_model.dart';

part 'post_pageable_response_model.freezed.dart';
part 'post_pageable_response_model.g.dart';

@freezed
abstract class PostPageableResponseModel with _$PostPageableResponseModel {
  const factory PostPageableResponseModel({
    required List<PostListResponseModel> content,
    required bool first,
    required bool end,
    required int page,
    required int size,
    required int pageElements,
    required int totalPages,
    required int totalElements,
  }) = _PostPageableResponseModel;

  factory PostPageableResponseModel.fromJson(Map<String, dynamic> json) =>
    _$PostPageableResponseModelFromJson(json);
}
