// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RestaurantResponseModel {

 String get id; DateTime get createdAt; String get name; String get cnpj; RestaurantResponseModel get status;
/// Create a copy of RestaurantResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RestaurantResponseModelCopyWith<RestaurantResponseModel> get copyWith => _$RestaurantResponseModelCopyWithImpl<RestaurantResponseModel>(this as RestaurantResponseModel, _$identity);

  /// Serializes this RestaurantResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RestaurantResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.cnpj, cnpj) || other.cnpj == cnpj)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,name,cnpj,status);

@override
String toString() {
  return 'RestaurantResponseModel(id: $id, createdAt: $createdAt, name: $name, cnpj: $cnpj, status: $status)';
}


}

/// @nodoc
abstract mixin class $RestaurantResponseModelCopyWith<$Res>  {
  factory $RestaurantResponseModelCopyWith(RestaurantResponseModel value, $Res Function(RestaurantResponseModel) _then) = _$RestaurantResponseModelCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, String name, String cnpj, RestaurantResponseModel status
});


$RestaurantResponseModelCopyWith<$Res> get status;

}
/// @nodoc
class _$RestaurantResponseModelCopyWithImpl<$Res>
    implements $RestaurantResponseModelCopyWith<$Res> {
  _$RestaurantResponseModelCopyWithImpl(this._self, this._then);

  final RestaurantResponseModel _self;
  final $Res Function(RestaurantResponseModel) _then;

/// Create a copy of RestaurantResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? name = null,Object? cnpj = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cnpj: null == cnpj ? _self.cnpj : cnpj // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RestaurantResponseModel,
  ));
}
/// Create a copy of RestaurantResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RestaurantResponseModelCopyWith<$Res> get status {
  
  return $RestaurantResponseModelCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [RestaurantResponseModel].
extension RestaurantResponseModelPatterns on RestaurantResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RestaurantResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RestaurantResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RestaurantResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _RestaurantResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RestaurantResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _RestaurantResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  String name,  String cnpj,  RestaurantResponseModel status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RestaurantResponseModel() when $default != null:
return $default(_that.id,_that.createdAt,_that.name,_that.cnpj,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  String name,  String cnpj,  RestaurantResponseModel status)  $default,) {final _that = this;
switch (_that) {
case _RestaurantResponseModel():
return $default(_that.id,_that.createdAt,_that.name,_that.cnpj,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  String name,  String cnpj,  RestaurantResponseModel status)?  $default,) {final _that = this;
switch (_that) {
case _RestaurantResponseModel() when $default != null:
return $default(_that.id,_that.createdAt,_that.name,_that.cnpj,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RestaurantResponseModel implements RestaurantResponseModel {
  const _RestaurantResponseModel({required this.id, required this.createdAt, required this.name, required this.cnpj, required this.status});
  factory _RestaurantResponseModel.fromJson(Map<String, dynamic> json) => _$RestaurantResponseModelFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
@override final  String name;
@override final  String cnpj;
@override final  RestaurantResponseModel status;

/// Create a copy of RestaurantResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RestaurantResponseModelCopyWith<_RestaurantResponseModel> get copyWith => __$RestaurantResponseModelCopyWithImpl<_RestaurantResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RestaurantResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RestaurantResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.cnpj, cnpj) || other.cnpj == cnpj)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,name,cnpj,status);

@override
String toString() {
  return 'RestaurantResponseModel(id: $id, createdAt: $createdAt, name: $name, cnpj: $cnpj, status: $status)';
}


}

/// @nodoc
abstract mixin class _$RestaurantResponseModelCopyWith<$Res> implements $RestaurantResponseModelCopyWith<$Res> {
  factory _$RestaurantResponseModelCopyWith(_RestaurantResponseModel value, $Res Function(_RestaurantResponseModel) _then) = __$RestaurantResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, String name, String cnpj, RestaurantResponseModel status
});


@override $RestaurantResponseModelCopyWith<$Res> get status;

}
/// @nodoc
class __$RestaurantResponseModelCopyWithImpl<$Res>
    implements _$RestaurantResponseModelCopyWith<$Res> {
  __$RestaurantResponseModelCopyWithImpl(this._self, this._then);

  final _RestaurantResponseModel _self;
  final $Res Function(_RestaurantResponseModel) _then;

/// Create a copy of RestaurantResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? name = null,Object? cnpj = null,Object? status = null,}) {
  return _then(_RestaurantResponseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cnpj: null == cnpj ? _self.cnpj : cnpj // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RestaurantResponseModel,
  ));
}

/// Create a copy of RestaurantResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RestaurantResponseModelCopyWith<$Res> get status {
  
  return $RestaurantResponseModelCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

// dart format on
