// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_user_list_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostUserListResponseModel {

 int get id; String? get userId; String? get userName; String? get restaurantId; String? get restaurantName; String get name; DateTime get createdAt; String get address; String? get description; String? get imageUrl;
/// Create a copy of PostUserListResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostUserListResponseModelCopyWith<PostUserListResponseModel> get copyWith => _$PostUserListResponseModelCopyWithImpl<PostUserListResponseModel>(this as PostUserListResponseModel, _$identity);

  /// Serializes this PostUserListResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostUserListResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.restaurantId, restaurantId) || other.restaurantId == restaurantId)&&(identical(other.restaurantName, restaurantName) || other.restaurantName == restaurantName)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.address, address) || other.address == address)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,userName,restaurantId,restaurantName,name,createdAt,address,description,imageUrl);

@override
String toString() {
  return 'PostUserListResponseModel(id: $id, userId: $userId, userName: $userName, restaurantId: $restaurantId, restaurantName: $restaurantName, name: $name, createdAt: $createdAt, address: $address, description: $description, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $PostUserListResponseModelCopyWith<$Res>  {
  factory $PostUserListResponseModelCopyWith(PostUserListResponseModel value, $Res Function(PostUserListResponseModel) _then) = _$PostUserListResponseModelCopyWithImpl;
@useResult
$Res call({
 int id, String? userId, String? userName, String? restaurantId, String? restaurantName, String name, DateTime createdAt, String address, String? description, String? imageUrl
});




}
/// @nodoc
class _$PostUserListResponseModelCopyWithImpl<$Res>
    implements $PostUserListResponseModelCopyWith<$Res> {
  _$PostUserListResponseModelCopyWithImpl(this._self, this._then);

  final PostUserListResponseModel _self;
  final $Res Function(PostUserListResponseModel) _then;

/// Create a copy of PostUserListResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = freezed,Object? userName = freezed,Object? restaurantId = freezed,Object? restaurantName = freezed,Object? name = null,Object? createdAt = null,Object? address = null,Object? description = freezed,Object? imageUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,restaurantId: freezed == restaurantId ? _self.restaurantId : restaurantId // ignore: cast_nullable_to_non_nullable
as String?,restaurantName: freezed == restaurantName ? _self.restaurantName : restaurantName // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PostUserListResponseModel].
extension PostUserListResponseModelPatterns on PostUserListResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostUserListResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostUserListResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostUserListResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _PostUserListResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostUserListResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _PostUserListResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? userId,  String? userName,  String? restaurantId,  String? restaurantName,  String name,  DateTime createdAt,  String address,  String? description,  String? imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostUserListResponseModel() when $default != null:
return $default(_that.id,_that.userId,_that.userName,_that.restaurantId,_that.restaurantName,_that.name,_that.createdAt,_that.address,_that.description,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? userId,  String? userName,  String? restaurantId,  String? restaurantName,  String name,  DateTime createdAt,  String address,  String? description,  String? imageUrl)  $default,) {final _that = this;
switch (_that) {
case _PostUserListResponseModel():
return $default(_that.id,_that.userId,_that.userName,_that.restaurantId,_that.restaurantName,_that.name,_that.createdAt,_that.address,_that.description,_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? userId,  String? userName,  String? restaurantId,  String? restaurantName,  String name,  DateTime createdAt,  String address,  String? description,  String? imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _PostUserListResponseModel() when $default != null:
return $default(_that.id,_that.userId,_that.userName,_that.restaurantId,_that.restaurantName,_that.name,_that.createdAt,_that.address,_that.description,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostUserListResponseModel implements PostUserListResponseModel {
  const _PostUserListResponseModel({required this.id, required this.userId, required this.userName, required this.restaurantId, required this.restaurantName, required this.name, required this.createdAt, required this.address, required this.description, required this.imageUrl});
  factory _PostUserListResponseModel.fromJson(Map<String, dynamic> json) => _$PostUserListResponseModelFromJson(json);

@override final  int id;
@override final  String? userId;
@override final  String? userName;
@override final  String? restaurantId;
@override final  String? restaurantName;
@override final  String name;
@override final  DateTime createdAt;
@override final  String address;
@override final  String? description;
@override final  String? imageUrl;

/// Create a copy of PostUserListResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostUserListResponseModelCopyWith<_PostUserListResponseModel> get copyWith => __$PostUserListResponseModelCopyWithImpl<_PostUserListResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostUserListResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostUserListResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.restaurantId, restaurantId) || other.restaurantId == restaurantId)&&(identical(other.restaurantName, restaurantName) || other.restaurantName == restaurantName)&&(identical(other.name, name) || other.name == name)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.address, address) || other.address == address)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,userName,restaurantId,restaurantName,name,createdAt,address,description,imageUrl);

@override
String toString() {
  return 'PostUserListResponseModel(id: $id, userId: $userId, userName: $userName, restaurantId: $restaurantId, restaurantName: $restaurantName, name: $name, createdAt: $createdAt, address: $address, description: $description, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$PostUserListResponseModelCopyWith<$Res> implements $PostUserListResponseModelCopyWith<$Res> {
  factory _$PostUserListResponseModelCopyWith(_PostUserListResponseModel value, $Res Function(_PostUserListResponseModel) _then) = __$PostUserListResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String? userId, String? userName, String? restaurantId, String? restaurantName, String name, DateTime createdAt, String address, String? description, String? imageUrl
});




}
/// @nodoc
class __$PostUserListResponseModelCopyWithImpl<$Res>
    implements _$PostUserListResponseModelCopyWith<$Res> {
  __$PostUserListResponseModelCopyWithImpl(this._self, this._then);

  final _PostUserListResponseModel _self;
  final $Res Function(_PostUserListResponseModel) _then;

/// Create a copy of PostUserListResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = freezed,Object? userName = freezed,Object? restaurantId = freezed,Object? restaurantName = freezed,Object? name = null,Object? createdAt = null,Object? address = null,Object? description = freezed,Object? imageUrl = freezed,}) {
  return _then(_PostUserListResponseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,restaurantId: freezed == restaurantId ? _self.restaurantId : restaurantId // ignore: cast_nullable_to_non_nullable
as String?,restaurantName: freezed == restaurantName ? _self.restaurantName : restaurantName // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
