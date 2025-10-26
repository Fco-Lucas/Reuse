// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_redemption_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostRedemptionResponseModel {

 int get id; String get userId; int get postId; DateTime get createdAt; PostRedemptionEnum get status;
/// Create a copy of PostRedemptionResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostRedemptionResponseModelCopyWith<PostRedemptionResponseModel> get copyWith => _$PostRedemptionResponseModelCopyWithImpl<PostRedemptionResponseModel>(this as PostRedemptionResponseModel, _$identity);

  /// Serializes this PostRedemptionResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostRedemptionResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,postId,createdAt,status);

@override
String toString() {
  return 'PostRedemptionResponseModel(id: $id, userId: $userId, postId: $postId, createdAt: $createdAt, status: $status)';
}


}

/// @nodoc
abstract mixin class $PostRedemptionResponseModelCopyWith<$Res>  {
  factory $PostRedemptionResponseModelCopyWith(PostRedemptionResponseModel value, $Res Function(PostRedemptionResponseModel) _then) = _$PostRedemptionResponseModelCopyWithImpl;
@useResult
$Res call({
 int id, String userId, int postId, DateTime createdAt, PostRedemptionEnum status
});




}
/// @nodoc
class _$PostRedemptionResponseModelCopyWithImpl<$Res>
    implements $PostRedemptionResponseModelCopyWith<$Res> {
  _$PostRedemptionResponseModelCopyWithImpl(this._self, this._then);

  final PostRedemptionResponseModel _self;
  final $Res Function(PostRedemptionResponseModel) _then;

/// Create a copy of PostRedemptionResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? postId = null,Object? createdAt = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PostRedemptionEnum,
  ));
}

}


/// Adds pattern-matching-related methods to [PostRedemptionResponseModel].
extension PostRedemptionResponseModelPatterns on PostRedemptionResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostRedemptionResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostRedemptionResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostRedemptionResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _PostRedemptionResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostRedemptionResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _PostRedemptionResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String userId,  int postId,  DateTime createdAt,  PostRedemptionEnum status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostRedemptionResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String userId,  int postId,  DateTime createdAt,  PostRedemptionEnum status)  $default,) {final _that = this;
switch (_that) {
case _PostRedemptionResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String userId,  int postId,  DateTime createdAt,  PostRedemptionEnum status)?  $default,) {final _that = this;
switch (_that) {
case _PostRedemptionResponseModel() when $default != null:
return $default(_that.id,_that.userId,_that.postId,_that.createdAt,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostRedemptionResponseModel implements PostRedemptionResponseModel {
  const _PostRedemptionResponseModel({required this.id, required this.userId, required this.postId, required this.createdAt, required this.status});
  factory _PostRedemptionResponseModel.fromJson(Map<String, dynamic> json) => _$PostRedemptionResponseModelFromJson(json);

@override final  int id;
@override final  String userId;
@override final  int postId;
@override final  DateTime createdAt;
@override final  PostRedemptionEnum status;

/// Create a copy of PostRedemptionResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostRedemptionResponseModelCopyWith<_PostRedemptionResponseModel> get copyWith => __$PostRedemptionResponseModelCopyWithImpl<_PostRedemptionResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostRedemptionResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostRedemptionResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,postId,createdAt,status);

@override
String toString() {
  return 'PostRedemptionResponseModel(id: $id, userId: $userId, postId: $postId, createdAt: $createdAt, status: $status)';
}


}

/// @nodoc
abstract mixin class _$PostRedemptionResponseModelCopyWith<$Res> implements $PostRedemptionResponseModelCopyWith<$Res> {
  factory _$PostRedemptionResponseModelCopyWith(_PostRedemptionResponseModel value, $Res Function(_PostRedemptionResponseModel) _then) = __$PostRedemptionResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String userId, int postId, DateTime createdAt, PostRedemptionEnum status
});




}
/// @nodoc
class __$PostRedemptionResponseModelCopyWithImpl<$Res>
    implements _$PostRedemptionResponseModelCopyWith<$Res> {
  __$PostRedemptionResponseModelCopyWithImpl(this._self, this._then);

  final _PostRedemptionResponseModel _self;
  final $Res Function(_PostRedemptionResponseModel) _then;

/// Create a copy of PostRedemptionResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? postId = null,Object? createdAt = null,Object? status = null,}) {
  return _then(_PostRedemptionResponseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PostRedemptionEnum,
  ));
}


}

// dart format on
