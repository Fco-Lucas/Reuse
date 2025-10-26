// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_post_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatePostRequestModel {

 String get name; int get amount; DateTime get validUntil; String get address; String? get description;
/// Create a copy of CreatePostRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePostRequestModelCopyWith<CreatePostRequestModel> get copyWith => _$CreatePostRequestModelCopyWithImpl<CreatePostRequestModel>(this as CreatePostRequestModel, _$identity);

  /// Serializes this CreatePostRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePostRequestModel&&(identical(other.name, name) || other.name == name)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.validUntil, validUntil) || other.validUntil == validUntil)&&(identical(other.address, address) || other.address == address)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,amount,validUntil,address,description);

@override
String toString() {
  return 'CreatePostRequestModel(name: $name, amount: $amount, validUntil: $validUntil, address: $address, description: $description)';
}


}

/// @nodoc
abstract mixin class $CreatePostRequestModelCopyWith<$Res>  {
  factory $CreatePostRequestModelCopyWith(CreatePostRequestModel value, $Res Function(CreatePostRequestModel) _then) = _$CreatePostRequestModelCopyWithImpl;
@useResult
$Res call({
 String name, int amount, DateTime validUntil, String address, String? description
});




}
/// @nodoc
class _$CreatePostRequestModelCopyWithImpl<$Res>
    implements $CreatePostRequestModelCopyWith<$Res> {
  _$CreatePostRequestModelCopyWithImpl(this._self, this._then);

  final CreatePostRequestModel _self;
  final $Res Function(CreatePostRequestModel) _then;

/// Create a copy of CreatePostRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? amount = null,Object? validUntil = null,Object? address = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,validUntil: null == validUntil ? _self.validUntil : validUntil // ignore: cast_nullable_to_non_nullable
as DateTime,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatePostRequestModel].
extension CreatePostRequestModelPatterns on CreatePostRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePostRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePostRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePostRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _CreatePostRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePostRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePostRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int amount,  DateTime validUntil,  String address,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePostRequestModel() when $default != null:
return $default(_that.name,_that.amount,_that.validUntil,_that.address,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int amount,  DateTime validUntil,  String address,  String? description)  $default,) {final _that = this;
switch (_that) {
case _CreatePostRequestModel():
return $default(_that.name,_that.amount,_that.validUntil,_that.address,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int amount,  DateTime validUntil,  String address,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _CreatePostRequestModel() when $default != null:
return $default(_that.name,_that.amount,_that.validUntil,_that.address,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatePostRequestModel implements CreatePostRequestModel {
  const _CreatePostRequestModel({required this.name, required this.amount, required this.validUntil, required this.address, required this.description});
  factory _CreatePostRequestModel.fromJson(Map<String, dynamic> json) => _$CreatePostRequestModelFromJson(json);

@override final  String name;
@override final  int amount;
@override final  DateTime validUntil;
@override final  String address;
@override final  String? description;

/// Create a copy of CreatePostRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePostRequestModelCopyWith<_CreatePostRequestModel> get copyWith => __$CreatePostRequestModelCopyWithImpl<_CreatePostRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatePostRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePostRequestModel&&(identical(other.name, name) || other.name == name)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.validUntil, validUntil) || other.validUntil == validUntil)&&(identical(other.address, address) || other.address == address)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,amount,validUntil,address,description);

@override
String toString() {
  return 'CreatePostRequestModel(name: $name, amount: $amount, validUntil: $validUntil, address: $address, description: $description)';
}


}

/// @nodoc
abstract mixin class _$CreatePostRequestModelCopyWith<$Res> implements $CreatePostRequestModelCopyWith<$Res> {
  factory _$CreatePostRequestModelCopyWith(_CreatePostRequestModel value, $Res Function(_CreatePostRequestModel) _then) = __$CreatePostRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String name, int amount, DateTime validUntil, String address, String? description
});




}
/// @nodoc
class __$CreatePostRequestModelCopyWithImpl<$Res>
    implements _$CreatePostRequestModelCopyWith<$Res> {
  __$CreatePostRequestModelCopyWithImpl(this._self, this._then);

  final _CreatePostRequestModel _self;
  final $Res Function(_CreatePostRequestModel) _then;

/// Create a copy of CreatePostRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? amount = null,Object? validUntil = null,Object? address = null,Object? description = freezed,}) {
  return _then(_CreatePostRequestModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,validUntil: null == validUntil ? _self.validUntil : validUntil // ignore: cast_nullable_to_non_nullable
as DateTime,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
