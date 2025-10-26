// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_list_users_redemptions_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostListUsersRedemptionsResponseModel {

 List<PostUsersRedemptionsResponseModel> get content; bool get first; bool get end; int get page; int get size; int get pageElements; int get totalPages; int get totalElements;
/// Create a copy of PostListUsersRedemptionsResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostListUsersRedemptionsResponseModelCopyWith<PostListUsersRedemptionsResponseModel> get copyWith => _$PostListUsersRedemptionsResponseModelCopyWithImpl<PostListUsersRedemptionsResponseModel>(this as PostListUsersRedemptionsResponseModel, _$identity);

  /// Serializes this PostListUsersRedemptionsResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostListUsersRedemptionsResponseModel&&const DeepCollectionEquality().equals(other.content, content)&&(identical(other.first, first) || other.first == first)&&(identical(other.end, end) || other.end == end)&&(identical(other.page, page) || other.page == page)&&(identical(other.size, size) || other.size == size)&&(identical(other.pageElements, pageElements) || other.pageElements == pageElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(content),first,end,page,size,pageElements,totalPages,totalElements);

@override
String toString() {
  return 'PostListUsersRedemptionsResponseModel(content: $content, first: $first, end: $end, page: $page, size: $size, pageElements: $pageElements, totalPages: $totalPages, totalElements: $totalElements)';
}


}

/// @nodoc
abstract mixin class $PostListUsersRedemptionsResponseModelCopyWith<$Res>  {
  factory $PostListUsersRedemptionsResponseModelCopyWith(PostListUsersRedemptionsResponseModel value, $Res Function(PostListUsersRedemptionsResponseModel) _then) = _$PostListUsersRedemptionsResponseModelCopyWithImpl;
@useResult
$Res call({
 List<PostUsersRedemptionsResponseModel> content, bool first, bool end, int page, int size, int pageElements, int totalPages, int totalElements
});




}
/// @nodoc
class _$PostListUsersRedemptionsResponseModelCopyWithImpl<$Res>
    implements $PostListUsersRedemptionsResponseModelCopyWith<$Res> {
  _$PostListUsersRedemptionsResponseModelCopyWithImpl(this._self, this._then);

  final PostListUsersRedemptionsResponseModel _self;
  final $Res Function(PostListUsersRedemptionsResponseModel) _then;

/// Create a copy of PostListUsersRedemptionsResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? content = null,Object? first = null,Object? end = null,Object? page = null,Object? size = null,Object? pageElements = null,Object? totalPages = null,Object? totalElements = null,}) {
  return _then(_self.copyWith(
content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as List<PostUsersRedemptionsResponseModel>,first: null == first ? _self.first : first // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [PostListUsersRedemptionsResponseModel].
extension PostListUsersRedemptionsResponseModelPatterns on PostListUsersRedemptionsResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostListUsersRedemptionsResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostListUsersRedemptionsResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostListUsersRedemptionsResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _PostListUsersRedemptionsResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostListUsersRedemptionsResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _PostListUsersRedemptionsResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PostUsersRedemptionsResponseModel> content,  bool first,  bool end,  int page,  int size,  int pageElements,  int totalPages,  int totalElements)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostListUsersRedemptionsResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PostUsersRedemptionsResponseModel> content,  bool first,  bool end,  int page,  int size,  int pageElements,  int totalPages,  int totalElements)  $default,) {final _that = this;
switch (_that) {
case _PostListUsersRedemptionsResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PostUsersRedemptionsResponseModel> content,  bool first,  bool end,  int page,  int size,  int pageElements,  int totalPages,  int totalElements)?  $default,) {final _that = this;
switch (_that) {
case _PostListUsersRedemptionsResponseModel() when $default != null:
return $default(_that.content,_that.first,_that.end,_that.page,_that.size,_that.pageElements,_that.totalPages,_that.totalElements);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostListUsersRedemptionsResponseModel implements PostListUsersRedemptionsResponseModel {
  const _PostListUsersRedemptionsResponseModel({required final  List<PostUsersRedemptionsResponseModel> content, required this.first, required this.end, required this.page, required this.size, required this.pageElements, required this.totalPages, required this.totalElements}): _content = content;
  factory _PostListUsersRedemptionsResponseModel.fromJson(Map<String, dynamic> json) => _$PostListUsersRedemptionsResponseModelFromJson(json);

 final  List<PostUsersRedemptionsResponseModel> _content;
@override List<PostUsersRedemptionsResponseModel> get content {
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

/// Create a copy of PostListUsersRedemptionsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostListUsersRedemptionsResponseModelCopyWith<_PostListUsersRedemptionsResponseModel> get copyWith => __$PostListUsersRedemptionsResponseModelCopyWithImpl<_PostListUsersRedemptionsResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostListUsersRedemptionsResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostListUsersRedemptionsResponseModel&&const DeepCollectionEquality().equals(other._content, _content)&&(identical(other.first, first) || other.first == first)&&(identical(other.end, end) || other.end == end)&&(identical(other.page, page) || other.page == page)&&(identical(other.size, size) || other.size == size)&&(identical(other.pageElements, pageElements) || other.pageElements == pageElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_content),first,end,page,size,pageElements,totalPages,totalElements);

@override
String toString() {
  return 'PostListUsersRedemptionsResponseModel(content: $content, first: $first, end: $end, page: $page, size: $size, pageElements: $pageElements, totalPages: $totalPages, totalElements: $totalElements)';
}


}

/// @nodoc
abstract mixin class _$PostListUsersRedemptionsResponseModelCopyWith<$Res> implements $PostListUsersRedemptionsResponseModelCopyWith<$Res> {
  factory _$PostListUsersRedemptionsResponseModelCopyWith(_PostListUsersRedemptionsResponseModel value, $Res Function(_PostListUsersRedemptionsResponseModel) _then) = __$PostListUsersRedemptionsResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<PostUsersRedemptionsResponseModel> content, bool first, bool end, int page, int size, int pageElements, int totalPages, int totalElements
});




}
/// @nodoc
class __$PostListUsersRedemptionsResponseModelCopyWithImpl<$Res>
    implements _$PostListUsersRedemptionsResponseModelCopyWith<$Res> {
  __$PostListUsersRedemptionsResponseModelCopyWithImpl(this._self, this._then);

  final _PostListUsersRedemptionsResponseModel _self;
  final $Res Function(_PostListUsersRedemptionsResponseModel) _then;

/// Create a copy of PostListUsersRedemptionsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? content = null,Object? first = null,Object? end = null,Object? page = null,Object? size = null,Object? pageElements = null,Object? totalPages = null,Object? totalElements = null,}) {
  return _then(_PostListUsersRedemptionsResponseModel(
content: null == content ? _self._content : content // ignore: cast_nullable_to_non_nullable
as List<PostUsersRedemptionsResponseModel>,first: null == first ? _self.first : first // ignore: cast_nullable_to_non_nullable
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
