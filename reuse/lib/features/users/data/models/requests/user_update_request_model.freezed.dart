// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_update_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserUpdateRequestModel {

 String get name; String get cpf;
/// Create a copy of UserUpdateRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserUpdateRequestModelCopyWith<UserUpdateRequestModel> get copyWith => _$UserUpdateRequestModelCopyWithImpl<UserUpdateRequestModel>(this as UserUpdateRequestModel, _$identity);

  /// Serializes this UserUpdateRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserUpdateRequestModel&&(identical(other.name, name) || other.name == name)&&(identical(other.cpf, cpf) || other.cpf == cpf));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,cpf);

@override
String toString() {
  return 'UserUpdateRequestModel(name: $name, cpf: $cpf)';
}


}

/// @nodoc
abstract mixin class $UserUpdateRequestModelCopyWith<$Res>  {
  factory $UserUpdateRequestModelCopyWith(UserUpdateRequestModel value, $Res Function(UserUpdateRequestModel) _then) = _$UserUpdateRequestModelCopyWithImpl;
@useResult
$Res call({
 String name, String cpf
});




}
/// @nodoc
class _$UserUpdateRequestModelCopyWithImpl<$Res>
    implements $UserUpdateRequestModelCopyWith<$Res> {
  _$UserUpdateRequestModelCopyWithImpl(this._self, this._then);

  final UserUpdateRequestModel _self;
  final $Res Function(UserUpdateRequestModel) _then;

/// Create a copy of UserUpdateRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? cpf = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cpf: null == cpf ? _self.cpf : cpf // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserUpdateRequestModel].
extension UserUpdateRequestModelPatterns on UserUpdateRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserUpdateRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserUpdateRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserUpdateRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _UserUpdateRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserUpdateRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserUpdateRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String cpf)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserUpdateRequestModel() when $default != null:
return $default(_that.name,_that.cpf);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String cpf)  $default,) {final _that = this;
switch (_that) {
case _UserUpdateRequestModel():
return $default(_that.name,_that.cpf);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String cpf)?  $default,) {final _that = this;
switch (_that) {
case _UserUpdateRequestModel() when $default != null:
return $default(_that.name,_that.cpf);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserUpdateRequestModel implements UserUpdateRequestModel {
  const _UserUpdateRequestModel({required this.name, required this.cpf});
  factory _UserUpdateRequestModel.fromJson(Map<String, dynamic> json) => _$UserUpdateRequestModelFromJson(json);

@override final  String name;
@override final  String cpf;

/// Create a copy of UserUpdateRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserUpdateRequestModelCopyWith<_UserUpdateRequestModel> get copyWith => __$UserUpdateRequestModelCopyWithImpl<_UserUpdateRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserUpdateRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserUpdateRequestModel&&(identical(other.name, name) || other.name == name)&&(identical(other.cpf, cpf) || other.cpf == cpf));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,cpf);

@override
String toString() {
  return 'UserUpdateRequestModel(name: $name, cpf: $cpf)';
}


}

/// @nodoc
abstract mixin class _$UserUpdateRequestModelCopyWith<$Res> implements $UserUpdateRequestModelCopyWith<$Res> {
  factory _$UserUpdateRequestModelCopyWith(_UserUpdateRequestModel value, $Res Function(_UserUpdateRequestModel) _then) = __$UserUpdateRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String cpf
});




}
/// @nodoc
class __$UserUpdateRequestModelCopyWithImpl<$Res>
    implements _$UserUpdateRequestModelCopyWith<$Res> {
  __$UserUpdateRequestModelCopyWithImpl(this._self, this._then);

  final _UserUpdateRequestModel _self;
  final $Res Function(_UserUpdateRequestModel) _then;

/// Create a copy of UserUpdateRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? cpf = null,}) {
  return _then(_UserUpdateRequestModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cpf: null == cpf ? _self.cpf : cpf // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
