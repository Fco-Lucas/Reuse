// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_update_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RestaurantUpdateRequestModel {

 String get name; String get cnpj;
/// Create a copy of RestaurantUpdateRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RestaurantUpdateRequestModelCopyWith<RestaurantUpdateRequestModel> get copyWith => _$RestaurantUpdateRequestModelCopyWithImpl<RestaurantUpdateRequestModel>(this as RestaurantUpdateRequestModel, _$identity);

  /// Serializes this RestaurantUpdateRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RestaurantUpdateRequestModel&&(identical(other.name, name) || other.name == name)&&(identical(other.cnpj, cnpj) || other.cnpj == cnpj));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,cnpj);

@override
String toString() {
  return 'RestaurantUpdateRequestModel(name: $name, cnpj: $cnpj)';
}


}

/// @nodoc
abstract mixin class $RestaurantUpdateRequestModelCopyWith<$Res>  {
  factory $RestaurantUpdateRequestModelCopyWith(RestaurantUpdateRequestModel value, $Res Function(RestaurantUpdateRequestModel) _then) = _$RestaurantUpdateRequestModelCopyWithImpl;
@useResult
$Res call({
 String name, String cnpj
});




}
/// @nodoc
class _$RestaurantUpdateRequestModelCopyWithImpl<$Res>
    implements $RestaurantUpdateRequestModelCopyWith<$Res> {
  _$RestaurantUpdateRequestModelCopyWithImpl(this._self, this._then);

  final RestaurantUpdateRequestModel _self;
  final $Res Function(RestaurantUpdateRequestModel) _then;

/// Create a copy of RestaurantUpdateRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? cnpj = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cnpj: null == cnpj ? _self.cnpj : cnpj // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RestaurantUpdateRequestModel].
extension RestaurantUpdateRequestModelPatterns on RestaurantUpdateRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RestaurantUpdateRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RestaurantUpdateRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RestaurantUpdateRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _RestaurantUpdateRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RestaurantUpdateRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _RestaurantUpdateRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String cnpj)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RestaurantUpdateRequestModel() when $default != null:
return $default(_that.name,_that.cnpj);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String cnpj)  $default,) {final _that = this;
switch (_that) {
case _RestaurantUpdateRequestModel():
return $default(_that.name,_that.cnpj);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String cnpj)?  $default,) {final _that = this;
switch (_that) {
case _RestaurantUpdateRequestModel() when $default != null:
return $default(_that.name,_that.cnpj);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RestaurantUpdateRequestModel implements RestaurantUpdateRequestModel {
  const _RestaurantUpdateRequestModel({required this.name, required this.cnpj});
  factory _RestaurantUpdateRequestModel.fromJson(Map<String, dynamic> json) => _$RestaurantUpdateRequestModelFromJson(json);

@override final  String name;
@override final  String cnpj;

/// Create a copy of RestaurantUpdateRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RestaurantUpdateRequestModelCopyWith<_RestaurantUpdateRequestModel> get copyWith => __$RestaurantUpdateRequestModelCopyWithImpl<_RestaurantUpdateRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RestaurantUpdateRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RestaurantUpdateRequestModel&&(identical(other.name, name) || other.name == name)&&(identical(other.cnpj, cnpj) || other.cnpj == cnpj));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,cnpj);

@override
String toString() {
  return 'RestaurantUpdateRequestModel(name: $name, cnpj: $cnpj)';
}


}

/// @nodoc
abstract mixin class _$RestaurantUpdateRequestModelCopyWith<$Res> implements $RestaurantUpdateRequestModelCopyWith<$Res> {
  factory _$RestaurantUpdateRequestModelCopyWith(_RestaurantUpdateRequestModel value, $Res Function(_RestaurantUpdateRequestModel) _then) = __$RestaurantUpdateRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String cnpj
});




}
/// @nodoc
class __$RestaurantUpdateRequestModelCopyWithImpl<$Res>
    implements _$RestaurantUpdateRequestModelCopyWith<$Res> {
  __$RestaurantUpdateRequestModelCopyWithImpl(this._self, this._then);

  final _RestaurantUpdateRequestModel _self;
  final $Res Function(_RestaurantUpdateRequestModel) _then;

/// Create a copy of RestaurantUpdateRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? cnpj = null,}) {
  return _then(_RestaurantUpdateRequestModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cnpj: null == cnpj ? _self.cnpj : cnpj // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
