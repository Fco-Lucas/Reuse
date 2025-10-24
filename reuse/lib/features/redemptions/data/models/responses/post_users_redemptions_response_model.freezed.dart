// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_users_redemptions_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostUsersRedemptionsResponseModel {

 int get postRedemptionId; int get postId; DateTime get redemptionAt; String? get imageUrl; String get postName; String? get restaurantName; String? get userName;
/// Create a copy of PostUsersRedemptionsResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostUsersRedemptionsResponseModelCopyWith<PostUsersRedemptionsResponseModel> get copyWith => _$PostUsersRedemptionsResponseModelCopyWithImpl<PostUsersRedemptionsResponseModel>(this as PostUsersRedemptionsResponseModel, _$identity);

  /// Serializes this PostUsersRedemptionsResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostUsersRedemptionsResponseModel&&(identical(other.postRedemptionId, postRedemptionId) || other.postRedemptionId == postRedemptionId)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.redemptionAt, redemptionAt) || other.redemptionAt == redemptionAt)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.postName, postName) || other.postName == postName)&&(identical(other.restaurantName, restaurantName) || other.restaurantName == restaurantName)&&(identical(other.userName, userName) || other.userName == userName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,postRedemptionId,postId,redemptionAt,imageUrl,postName,restaurantName,userName);

@override
String toString() {
  return 'PostUsersRedemptionsResponseModel(postRedemptionId: $postRedemptionId, postId: $postId, redemptionAt: $redemptionAt, imageUrl: $imageUrl, postName: $postName, restaurantName: $restaurantName, userName: $userName)';
}


}

/// @nodoc
abstract mixin class $PostUsersRedemptionsResponseModelCopyWith<$Res>  {
  factory $PostUsersRedemptionsResponseModelCopyWith(PostUsersRedemptionsResponseModel value, $Res Function(PostUsersRedemptionsResponseModel) _then) = _$PostUsersRedemptionsResponseModelCopyWithImpl;
@useResult
$Res call({
 int postRedemptionId, int postId, DateTime redemptionAt, String? imageUrl, String postName, String? restaurantName, String? userName
});




}
/// @nodoc
class _$PostUsersRedemptionsResponseModelCopyWithImpl<$Res>
    implements $PostUsersRedemptionsResponseModelCopyWith<$Res> {
  _$PostUsersRedemptionsResponseModelCopyWithImpl(this._self, this._then);

  final PostUsersRedemptionsResponseModel _self;
  final $Res Function(PostUsersRedemptionsResponseModel) _then;

/// Create a copy of PostUsersRedemptionsResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? postRedemptionId = null,Object? postId = null,Object? redemptionAt = null,Object? imageUrl = freezed,Object? postName = null,Object? restaurantName = freezed,Object? userName = freezed,}) {
  return _then(_self.copyWith(
postRedemptionId: null == postRedemptionId ? _self.postRedemptionId : postRedemptionId // ignore: cast_nullable_to_non_nullable
as int,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int,redemptionAt: null == redemptionAt ? _self.redemptionAt : redemptionAt // ignore: cast_nullable_to_non_nullable
as DateTime,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,postName: null == postName ? _self.postName : postName // ignore: cast_nullable_to_non_nullable
as String,restaurantName: freezed == restaurantName ? _self.restaurantName : restaurantName // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PostUsersRedemptionsResponseModel].
extension PostUsersRedemptionsResponseModelPatterns on PostUsersRedemptionsResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostUsersRedemptionsResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostUsersRedemptionsResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostUsersRedemptionsResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _PostUsersRedemptionsResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostUsersRedemptionsResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _PostUsersRedemptionsResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int postRedemptionId,  int postId,  DateTime redemptionAt,  String? imageUrl,  String postName,  String? restaurantName,  String? userName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostUsersRedemptionsResponseModel() when $default != null:
return $default(_that.postRedemptionId,_that.postId,_that.redemptionAt,_that.imageUrl,_that.postName,_that.restaurantName,_that.userName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int postRedemptionId,  int postId,  DateTime redemptionAt,  String? imageUrl,  String postName,  String? restaurantName,  String? userName)  $default,) {final _that = this;
switch (_that) {
case _PostUsersRedemptionsResponseModel():
return $default(_that.postRedemptionId,_that.postId,_that.redemptionAt,_that.imageUrl,_that.postName,_that.restaurantName,_that.userName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int postRedemptionId,  int postId,  DateTime redemptionAt,  String? imageUrl,  String postName,  String? restaurantName,  String? userName)?  $default,) {final _that = this;
switch (_that) {
case _PostUsersRedemptionsResponseModel() when $default != null:
return $default(_that.postRedemptionId,_that.postId,_that.redemptionAt,_that.imageUrl,_that.postName,_that.restaurantName,_that.userName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostUsersRedemptionsResponseModel implements PostUsersRedemptionsResponseModel {
  const _PostUsersRedemptionsResponseModel({required this.postRedemptionId, required this.postId, required this.redemptionAt, required this.imageUrl, required this.postName, required this.restaurantName, required this.userName});
  factory _PostUsersRedemptionsResponseModel.fromJson(Map<String, dynamic> json) => _$PostUsersRedemptionsResponseModelFromJson(json);

@override final  int postRedemptionId;
@override final  int postId;
@override final  DateTime redemptionAt;
@override final  String? imageUrl;
@override final  String postName;
@override final  String? restaurantName;
@override final  String? userName;

/// Create a copy of PostUsersRedemptionsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostUsersRedemptionsResponseModelCopyWith<_PostUsersRedemptionsResponseModel> get copyWith => __$PostUsersRedemptionsResponseModelCopyWithImpl<_PostUsersRedemptionsResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostUsersRedemptionsResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostUsersRedemptionsResponseModel&&(identical(other.postRedemptionId, postRedemptionId) || other.postRedemptionId == postRedemptionId)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.redemptionAt, redemptionAt) || other.redemptionAt == redemptionAt)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.postName, postName) || other.postName == postName)&&(identical(other.restaurantName, restaurantName) || other.restaurantName == restaurantName)&&(identical(other.userName, userName) || other.userName == userName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,postRedemptionId,postId,redemptionAt,imageUrl,postName,restaurantName,userName);

@override
String toString() {
  return 'PostUsersRedemptionsResponseModel(postRedemptionId: $postRedemptionId, postId: $postId, redemptionAt: $redemptionAt, imageUrl: $imageUrl, postName: $postName, restaurantName: $restaurantName, userName: $userName)';
}


}

/// @nodoc
abstract mixin class _$PostUsersRedemptionsResponseModelCopyWith<$Res> implements $PostUsersRedemptionsResponseModelCopyWith<$Res> {
  factory _$PostUsersRedemptionsResponseModelCopyWith(_PostUsersRedemptionsResponseModel value, $Res Function(_PostUsersRedemptionsResponseModel) _then) = __$PostUsersRedemptionsResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int postRedemptionId, int postId, DateTime redemptionAt, String? imageUrl, String postName, String? restaurantName, String? userName
});




}
/// @nodoc
class __$PostUsersRedemptionsResponseModelCopyWithImpl<$Res>
    implements _$PostUsersRedemptionsResponseModelCopyWith<$Res> {
  __$PostUsersRedemptionsResponseModelCopyWithImpl(this._self, this._then);

  final _PostUsersRedemptionsResponseModel _self;
  final $Res Function(_PostUsersRedemptionsResponseModel) _then;

/// Create a copy of PostUsersRedemptionsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? postRedemptionId = null,Object? postId = null,Object? redemptionAt = null,Object? imageUrl = freezed,Object? postName = null,Object? restaurantName = freezed,Object? userName = freezed,}) {
  return _then(_PostUsersRedemptionsResponseModel(
postRedemptionId: null == postRedemptionId ? _self.postRedemptionId : postRedemptionId // ignore: cast_nullable_to_non_nullable
as int,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int,redemptionAt: null == redemptionAt ? _self.redemptionAt : redemptionAt // ignore: cast_nullable_to_non_nullable
as DateTime,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,postName: null == postName ? _self.postName : postName // ignore: cast_nullable_to_non_nullable
as String,restaurantName: freezed == restaurantName ? _self.restaurantName : restaurantName // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
