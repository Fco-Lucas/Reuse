// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_create_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RestaurantCreateRequestModel {

 String get name; String get cnpj; String get password;
/// Create a copy of RestaurantCreateRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RestaurantCreateRequestModelCopyWith<RestaurantCreateRequestModel> get copyWith => _$RestaurantCreateRequestModelCopyWithImpl<RestaurantCreateRequestModel>(this as RestaurantCreateRequestModel, _$identity);

  /// Serializes this RestaurantCreateRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RestaurantCreateRequestModel&&(identical(other.name, name) || other.name == name)&&(identical(other.cnpj, cnpj) || other.cnpj == cnpj)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,cnpj,password);

@override
String toString() {
  return 'RestaurantCreateRequestModel(name: $name, cnpj: $cnpj, password: $password)';
}


}

/// @nodoc
abstract mixin class $RestaurantCreateRequestModelCopyWith<$Res>  {
  factory $RestaurantCreateRequestModelCopyWith(RestaurantCreateRequestModel value, $Res Function(RestaurantCreateRequestModel) _then) = _$RestaurantCreateRequestModelCopyWithImpl;
@useResult
$Res call({
 String name, String cnpj, String password
});




}
/// @nodoc
class _$RestaurantCreateRequestModelCopyWithImpl<$Res>
    implements $RestaurantCreateRequestModelCopyWith<$Res> {
  _$RestaurantCreateRequestModelCopyWithImpl(this._self, this._then);

  final RestaurantCreateRequestModel _self;
  final $Res Function(RestaurantCreateRequestModel) _then;

/// Create a copy of RestaurantCreateRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? cnpj = null,Object? password = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cnpj: null == cnpj ? _self.cnpj : cnpj // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RestaurantCreateRequestModel].
extension RestaurantCreateRequestModelPatterns on RestaurantCreateRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RestaurantCreateRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RestaurantCreateRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RestaurantCreateRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _RestaurantCreateRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RestaurantCreateRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _RestaurantCreateRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String cnpj,  String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RestaurantCreateRequestModel() when $default != null:
return $default(_that.name,_that.cnpj,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String cnpj,  String password)  $default,) {final _that = this;
switch (_that) {
case _RestaurantCreateRequestModel():
return $default(_that.name,_that.cnpj,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String cnpj,  String password)?  $default,) {final _that = this;
switch (_that) {
case _RestaurantCreateRequestModel() when $default != null:
return $default(_that.name,_that.cnpj,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RestaurantCreateRequestModel implements RestaurantCreateRequestModel {
  const _RestaurantCreateRequestModel({required this.name, required this.cnpj, required this.password});
  factory _RestaurantCreateRequestModel.fromJson(Map<String, dynamic> json) => _$RestaurantCreateRequestModelFromJson(json);

@override final  String name;
@override final  String cnpj;
@override final  String password;

/// Create a copy of RestaurantCreateRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RestaurantCreateRequestModelCopyWith<_RestaurantCreateRequestModel> get copyWith => __$RestaurantCreateRequestModelCopyWithImpl<_RestaurantCreateRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RestaurantCreateRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RestaurantCreateRequestModel&&(identical(other.name, name) || other.name == name)&&(identical(other.cnpj, cnpj) || other.cnpj == cnpj)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,cnpj,password);

@override
String toString() {
  return 'RestaurantCreateRequestModel(name: $name, cnpj: $cnpj, password: $password)';
}


}

/// @nodoc
abstract mixin class _$RestaurantCreateRequestModelCopyWith<$Res> implements $RestaurantCreateRequestModelCopyWith<$Res> {
  factory _$RestaurantCreateRequestModelCopyWith(_RestaurantCreateRequestModel value, $Res Function(_RestaurantCreateRequestModel) _then) = __$RestaurantCreateRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String cnpj, String password
});




}
/// @nodoc
class __$RestaurantCreateRequestModelCopyWithImpl<$Res>
    implements _$RestaurantCreateRequestModelCopyWith<$Res> {
  __$RestaurantCreateRequestModelCopyWithImpl(this._self, this._then);

  final _RestaurantCreateRequestModel _self;
  final $Res Function(_RestaurantCreateRequestModel) _then;

/// Create a copy of RestaurantCreateRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? cnpj = null,Object? password = null,}) {
  return _then(_RestaurantCreateRequestModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cnpj: null == cnpj ? _self.cnpj : cnpj // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
