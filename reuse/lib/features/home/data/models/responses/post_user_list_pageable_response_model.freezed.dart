// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_user_list_pageable_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostUserListPageableResponseModel {

 List<PostUserListResponseModel> get content; bool get first; bool get end; int get page; int get size; int get pageElements; int get totalPages; int get totalElements;
/// Create a copy of PostUserListPageableResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostUserListPageableResponseModelCopyWith<PostUserListPageableResponseModel> get copyWith => _$PostUserListPageableResponseModelCopyWithImpl<PostUserListPageableResponseModel>(this as PostUserListPageableResponseModel, _$identity);

  /// Serializes this PostUserListPageableResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostUserListPageableResponseModel&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.first, first) || other.first == first)&&(identical(other.end, end) || other.end == end)&&(identical(other.page, page) || other.page == page)&&(identical(other.size, size) || other.size == size)&&(identical(other.pageElements, pageElements) || other.pageElements == pageElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(content),first,end,page,size,pageElements,totalPages,totalElements);

@override
String toString() {
  return 'PostUserListPageableResponseModel(content: $content, first: $first, end: $end, page: $page, size: $size, pageElements: $pageElements, totalPages: $totalPages, totalElements: $totalElements)';
}


}

/// @nodoc
abstract mixin class $PostUserListPageableResponseModelCopyWith<$Res>  {
  factory $PostUserListPageableResponseModelCopyWith(PostUserListPageableResponseModel value, $Res Function(PostUserListPageableResponseModel) _then) = _$PostUserListPageableResponseModelCopyWithImpl;
@useResult
$Res call({
 List<PostUserListResponseModel> content, bool first, bool end, int page, int size, int pageElements, int totalPages, int totalElements
});




}
/// @nodoc
class _$PostUserListPageableResponseModelCopyWithImpl<$Res>
    implements $PostUserListPageableResponseModelCopyWith<$Res> {
  _$PostUserListPageableResponseModelCopyWithImpl(this._self, this._then);

  final PostUserListPageableResponseModel _self;
  final $Res Function(PostUserListPageableResponseModel) _then;

/// Create a copy of PostUserListPageableResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? first = null,Object? end = null,Object? page = null,Object? size = null,Object? pageElements = null,Object? totalPages = null,Object? totalElements = null,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as List<PostUserListResponseModel>,first: null == first ? _self.first : first // ignore: cast_nullable_to_non_nullable
as bool,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as bool,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,pageElements: null == pageElements ? _self.pageElements : pageElements // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,totalElements: null == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PostUserListPageableResponseModel].
extension PostUserListPageableResponseModelPatterns on PostUserListPageableResponseModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostUserListPageableResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostUserListPageableResponseModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostUserListPageableResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _PostUserListPageableResponseModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostUserListPageableResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _PostUserListPageableResponseModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PostUserListResponseModel> content,  bool first,  bool end,  int page,  int size,  int pageElements,  int totalPages,  int totalElements)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostUserListPageableResponseModel() when $default != null:
return $default(_that.content,_that.first,_that.end,_that.page,_that.size,_that.pageElements,_that.totalPages,_that.totalElements);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PostUserListResponseModel> content,  bool first,  bool end,  int page,  int size,  int pageElements,  int totalPages,  int totalElements)  $default,) {final _that = this;
switch (_that) {
case _PostUserListPageableResponseModel():
return $default(_that.content,_that.first,_that.end,_that.page,_that.size,_that.pageElements,_that.totalPages,_that.totalElements);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PostUserListResponseModel> content,  bool first,  bool end,  int page,  int size,  int pageElements,  int totalPages,  int totalElements)?  $default,) {final _that = this;
switch (_that) {
case _PostUserListPageableResponseModel() when $default != null:
return $default(_that.content,_that.first,_that.end,_that.page,_that.size,_that.pageElements,_that.totalPages,_that.totalElements);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostUserListPageableResponseModel implements PostUserListPageableResponseModel {
  const _PostUserListPageableResponseModel({required final  List<PostUserListResponseModel> content, required this.first, required this.end, required this.page, required this.size, required this.pageElements, required this.totalPages, required this.totalElements}): _content = content;
  factory _PostUserListPageableResponseModel.fromJson(Map<String, dynamic> json) => _$PostUserListPageableResponseModelFromJson(json);

 final  List<PostUserListResponseModel> _content;
@override List<PostUserListResponseModel> get content {
  if (_content is EqualUnmodifiableListView) return _content;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_content);
}

@override final  bool first;
@override final  bool end;
@override final  int page;
@override final  int size;
@override final  int pageElements;
@override final  int totalPages;
@override final  int totalElements;

/// Create a copy of PostUserListPageableResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostUserListPageableResponseModelCopyWith<_PostUserListPageableResponseModel> get copyWith => __$PostUserListPageableResponseModelCopyWithImpl<_PostUserListPageableResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostUserListPageableResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostUserListPageableResponseModel&&const DeepCollectionEquality().equals(other._content, _content)&&(identical(other.first, first) || other.first == first)&&(identical(other.end, end) || other.end == end)&&(identical(other.page, page) || other.page == page)&&(identical(other.size, size) || other.size == size)&&(identical(other.pageElements, pageElements) || other.pageElements == pageElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_content),first,end,page,size,pageElements,totalPages,totalElements);

@override
String toString() {
  return 'PostUserListPageableResponseModel(content: $content, first: $first, end: $end, page: $page, size: $size, pageElements: $pageElements, totalPages: $totalPages, totalElements: $totalElements)';
}


}

/// @nodoc
abstract mixin class _$PostUserListPageableResponseModelCopyWith<$Res> implements $PostUserListPageableResponseModelCopyWith<$Res> {
  factory _$PostUserListPageableResponseModelCopyWith(_PostUserListPageableResponseModel value, $Res Function(_PostUserListPageableResponseModel) _then) = __$PostUserListPageableResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<PostUserListResponseModel> content, bool first, bool end, int page, int size, int pageElements, int totalPages, int totalElements
});




}
/// @nodoc
class __$PostUserListPageableResponseModelCopyWithImpl<$Res>
    implements _$PostUserListPageableResponseModelCopyWith<$Res> {
  __$PostUserListPageableResponseModelCopyWithImpl(this._self, this._then);

  final _PostUserListPageableResponseModel _self;
  final $Res Function(_PostUserListPageableResponseModel) _then;

/// Create a copy of PostUserListPageableResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? first = null,Object? end = null,Object? page = null,Object? size = null,Object? pageElements = null,Object? totalPages = null,Object? totalElements = null,}) {
  return _then(_PostUserListPageableResponseModel(
content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<PostUserListResponseModel>,first: null == first ? _self.first : first // ignore: cast_nullable_to_non_nullable
as bool,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as bool,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,pageElements: null == pageElements ? _self.pageElements : pageElements // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,totalElements: null == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
