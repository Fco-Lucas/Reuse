// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_like_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostLikeResponseModel {

 int get id; String get userId; int get postId; DateTime get createdAt; PostLikeStatusEnum get status;
/// Create a copy of PostLikeResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostLikeResponseModelCopyWith<PostLikeResponseModel> get copyWith => _$PostLikeResponseModelCopyWithImpl<PostLikeResponseModel>(this as PostLikeResponseModel, _$identity);

  /// Serializes this PostLikeResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostLikeResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,postId,createdAt,status);

@override
String toString() {
  return 'PostLikeResponseModel(id: $id, userId: $userId, postId: $postId, createdAt: $createdAt, status: $status)';
}


}

/// @nodoc
abstract mixin class $PostLikeResponseModelCopyWith<$Res>  {
  factory $PostLikeResponseModelCopyWith(PostLikeResponseModel value, $Res Function(PostLikeResponseModel) _then) = _$PostLikeResponseModelCopyWithImpl;
@useResult
$Res call({
 int id, String userId, int postId, DateTime createdAt, PostLikeStatusEnum status
});




}
/// @nodoc
class _$PostLikeResponseModelCopyWithImpl<$Res>
    implements $PostLikeResponseModelCopyWith<$Res> {
  _$PostLikeResponseModelCopyWithImpl(this._self, this._then);

  final PostLikeResponseModel _self;
  final $Res Function(PostLikeResponseModel) _then;

/// Create a copy of PostLikeResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? postId = null,Object? createdAt = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PostLikeStatusEnum,
  ));
}

}


/// Adds pattern-matching-related methods to [PostLikeResponseModel].
extension PostLikeResponseModelPatterns on PostLikeResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostLikeResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostLikeResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostLikeResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _PostLikeResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostLikeResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _PostLikeResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String userId,  int postId,  DateTime createdAt,  PostLikeStatusEnum status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostLikeResponseModel() when $default != null:
return $default(_that.id,_that.userId,_that.postId,_that.createdAt,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String userId,  int postId,  DateTime createdAt,  PostLikeStatusEnum status)  $default,) {final _that = this;
switch (_that) {
case _PostLikeResponseModel():
return $default(_that.id,_that.userId,_that.postId,_that.createdAt,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String userId,  int postId,  DateTime createdAt,  PostLikeStatusEnum status)?  $default,) {final _that = this;
switch (_that) {
case _PostLikeResponseModel() when $default != null:
return $default(_that.id,_that.userId,_that.postId,_that.createdAt,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostLikeResponseModel implements PostLikeResponseModel {
  const _PostLikeResponseModel({required this.id, required this.userId, required this.postId, required this.createdAt, required this.status});
  factory _PostLikeResponseModel.fromJson(Map<String, dynamic> json) => _$PostLikeResponseModelFromJson(json);

@override final  int id;
@override final  String userId;
@override final  int postId;
@override final  DateTime createdAt;
@override final  PostLikeStatusEnum status;

/// Create a copy of PostLikeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostLikeResponseModelCopyWith<_PostLikeResponseModel> get copyWith => __$PostLikeResponseModelCopyWithImpl<_PostLikeResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostLikeResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostLikeResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,postId,createdAt,status);

@override
String toString() {
  return 'PostLikeResponseModel(id: $id, userId: $userId, postId: $postId, createdAt: $createdAt, status: $status)';
}


}

/// @nodoc
abstract mixin class _$PostLikeResponseModelCopyWith<$Res> implements $PostLikeResponseModelCopyWith<$Res> {
  factory _$PostLikeResponseModelCopyWith(_PostLikeResponseModel value, $Res Function(_PostLikeResponseModel) _then) = __$PostLikeResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String userId, int postId, DateTime createdAt, PostLikeStatusEnum status
});




}
/// @nodoc
class __$PostLikeResponseModelCopyWithImpl<$Res>
    implements _$PostLikeResponseModelCopyWith<$Res> {
  __$PostLikeResponseModelCopyWithImpl(this._self, this._then);

  final _PostLikeResponseModel _self;
  final $Res Function(_PostLikeResponseModel) _then;

/// Create a copy of PostLikeResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? postId = null,Object? createdAt = null,Object? status = null,}) {
  return _then(_PostLikeResponseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PostLikeStatusEnum,
  ));
}


}

// dart format on
