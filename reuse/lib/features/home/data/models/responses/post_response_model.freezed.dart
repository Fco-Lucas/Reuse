// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostResponseModel {

 int get id; bool get liked; String? get userId; String? get userName; String? get restaurantId; String? get restaurantName; String get name; int get amount; int get amountRedemption; DateTime get validUntil; DateTime get createdAt; String get address; String? get description; String? get imageUrl; PostStatusEnum get status;
/// Create a copy of PostResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostResponseModelCopyWith<PostResponseModel> get copyWith => _$PostResponseModelCopyWithImpl<PostResponseModel>(this as PostResponseModel, _$identity);

  /// Serializes this PostResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.liked, liked) || other.liked == liked)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.restaurantId, restaurantId) || other.restaurantId == restaurantId)&&(identical(other.restaurantName, restaurantName) || other.restaurantName == restaurantName)&&(identical(other.name, name) || other.name == name)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.amountRedemption, amountRedemption) || other.amountRedemption == amountRedemption)&&(identical(other.validUntil, validUntil) || other.validUntil == validUntil)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.address, address) || other.address == address)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,liked,userId,userName,restaurantId,restaurantName,name,amount,amountRedemption,validUntil,createdAt,address,description,imageUrl,status);

@override
String toString() {
  return 'PostResponseModel(id: $id, liked: $liked, userId: $userId, userName: $userName, restaurantId: $restaurantId, restaurantName: $restaurantName, name: $name, amount: $amount, amountRedemption: $amountRedemption, validUntil: $validUntil, createdAt: $createdAt, address: $address, description: $description, imageUrl: $imageUrl, status: $status)';
}


}

/// @nodoc
abstract mixin class $PostResponseModelCopyWith<$Res>  {
  factory $PostResponseModelCopyWith(PostResponseModel value, $Res Function(PostResponseModel) _then) = _$PostResponseModelCopyWithImpl;
@useResult
$Res call({
 int id, bool liked, String? userId, String? userName, String? restaurantId, String? restaurantName, String name, int amount, int amountRedemption, DateTime validUntil, DateTime createdAt, String address, String? description, String? imageUrl, PostStatusEnum status
});




}
/// @nodoc
class _$PostResponseModelCopyWithImpl<$Res>
    implements $PostResponseModelCopyWith<$Res> {
  _$PostResponseModelCopyWithImpl(this._self, this._then);

  final PostResponseModel _self;
  final $Res Function(PostResponseModel) _then;

/// Create a copy of PostResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? liked = null,Object? userId = freezed,Object? userName = freezed,Object? restaurantId = freezed,Object? restaurantName = freezed,Object? name = null,Object? amount = null,Object? amountRedemption = null,Object? validUntil = null,Object? createdAt = null,Object? address = null,Object? description = freezed,Object? imageUrl = freezed,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,liked: null == liked ? _self.liked : liked // ignore: cast_nullable_to_non_nullable
as bool,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,restaurantId: freezed == restaurantId ? _self.restaurantId : restaurantId // ignore: cast_nullable_to_non_nullable
as String?,restaurantName: freezed == restaurantName ? _self.restaurantName : restaurantName // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,amountRedemption: null == amountRedemption ? _self.amountRedemption : amountRedemption // ignore: cast_nullable_to_non_nullable
as int,validUntil: null == validUntil ? _self.validUntil : validUntil // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PostStatusEnum,
  ));
}

}


/// Adds pattern-matching-related methods to [PostResponseModel].
extension PostResponseModelPatterns on PostResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _PostResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _PostResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  bool liked,  String? userId,  String? userName,  String? restaurantId,  String? restaurantName,  String name,  int amount,  int amountRedemption,  DateTime validUntil,  DateTime createdAt,  String address,  String? description,  String? imageUrl,  PostStatusEnum status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostResponseModel() when $default != null:
return $default(_that.id,_that.liked,_that.userId,_that.userName,_that.restaurantId,_that.restaurantName,_that.name,_that.amount,_that.amountRedemption,_that.validUntil,_that.createdAt,_that.address,_that.description,_that.imageUrl,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  bool liked,  String? userId,  String? userName,  String? restaurantId,  String? restaurantName,  String name,  int amount,  int amountRedemption,  DateTime validUntil,  DateTime createdAt,  String address,  String? description,  String? imageUrl,  PostStatusEnum status)  $default,) {final _that = this;
switch (_that) {
case _PostResponseModel():
return $default(_that.id,_that.liked,_that.userId,_that.userName,_that.restaurantId,_that.restaurantName,_that.name,_that.amount,_that.amountRedemption,_that.validUntil,_that.createdAt,_that.address,_that.description,_that.imageUrl,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  bool liked,  String? userId,  String? userName,  String? restaurantId,  String? restaurantName,  String name,  int amount,  int amountRedemption,  DateTime validUntil,  DateTime createdAt,  String address,  String? description,  String? imageUrl,  PostStatusEnum status)?  $default,) {final _that = this;
switch (_that) {
case _PostResponseModel() when $default != null:
return $default(_that.id,_that.liked,_that.userId,_that.userName,_that.restaurantId,_that.restaurantName,_that.name,_that.amount,_that.amountRedemption,_that.validUntil,_that.createdAt,_that.address,_that.description,_that.imageUrl,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostResponseModel extends PostResponseModel {
  const _PostResponseModel({required this.id, required this.liked, required this.userId, required this.userName, required this.restaurantId, required this.restaurantName, required this.name, required this.amount, required this.amountRedemption, required this.validUntil, required this.createdAt, required this.address, required this.description, required this.imageUrl, required this.status}): super._();
  factory _PostResponseModel.fromJson(Map<String, dynamic> json) => _$PostResponseModelFromJson(json);

@override final  int id;
@override final  bool liked;
@override final  String? userId;
@override final  String? userName;
@override final  String? restaurantId;
@override final  String? restaurantName;
@override final  String name;
@override final  int amount;
@override final  int amountRedemption;
@override final  DateTime validUntil;
@override final  DateTime createdAt;
@override final  String address;
@override final  String? description;
@override final  String? imageUrl;
@override final  PostStatusEnum status;

/// Create a copy of PostResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostResponseModelCopyWith<_PostResponseModel> get copyWith => __$PostResponseModelCopyWithImpl<_PostResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.liked, liked) || other.liked == liked)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.restaurantId, restaurantId) || other.restaurantId == restaurantId)&&(identical(other.restaurantName, restaurantName) || other.restaurantName == restaurantName)&&(identical(other.name, name) || other.name == name)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.amountRedemption, amountRedemption) || other.amountRedemption == amountRedemption)&&(identical(other.validUntil, validUntil) || other.validUntil == validUntil)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.address, address) || other.address == address)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,liked,userId,userName,restaurantId,restaurantName,name,amount,amountRedemption,validUntil,createdAt,address,description,imageUrl,status);

@override
String toString() {
  return 'PostResponseModel(id: $id, liked: $liked, userId: $userId, userName: $userName, restaurantId: $restaurantId, restaurantName: $restaurantName, name: $name, amount: $amount, amountRedemption: $amountRedemption, validUntil: $validUntil, createdAt: $createdAt, address: $address, description: $description, imageUrl: $imageUrl, status: $status)';
}


}

/// @nodoc
abstract mixin class _$PostResponseModelCopyWith<$Res> implements $PostResponseModelCopyWith<$Res> {
  factory _$PostResponseModelCopyWith(_PostResponseModel value, $Res Function(_PostResponseModel) _then) = __$PostResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int id, bool liked, String? userId, String? userName, String? restaurantId, String? restaurantName, String name, int amount, int amountRedemption, DateTime validUntil, DateTime createdAt, String address, String? description, String? imageUrl, PostStatusEnum status
});




}
/// @nodoc
class __$PostResponseModelCopyWithImpl<$Res>
    implements _$PostResponseModelCopyWith<$Res> {
  __$PostResponseModelCopyWithImpl(this._self, this._then);

  final _PostResponseModel _self;
  final $Res Function(_PostResponseModel) _then;

/// Create a copy of PostResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? liked = null,Object? userId = freezed,Object? userName = freezed,Object? restaurantId = freezed,Object? restaurantName = freezed,Object? name = null,Object? amount = null,Object? amountRedemption = null,Object? validUntil = null,Object? createdAt = null,Object? address = null,Object? description = freezed,Object? imageUrl = freezed,Object? status = null,}) {
  return _then(_PostResponseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,liked: null == liked ? _self.liked : liked // ignore: cast_nullable_to_non_nullable
as bool,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,userName: freezed == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String?,restaurantId: freezed == restaurantId ? _self.restaurantId : restaurantId // ignore: cast_nullable_to_non_nullable
as String?,restaurantName: freezed == restaurantName ? _self.restaurantName : restaurantName // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,amountRedemption: null == amountRedemption ? _self.amountRedemption : amountRedemption // ignore: cast_nullable_to_non_nullable
as int,validUntil: null == validUntil ? _self.validUntil : validUntil // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PostStatusEnum,
  ));
}


}

// dart format on
