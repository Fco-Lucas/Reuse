// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_create_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserCreateRequestModel {

 String get name; String get cpf; String get password;
/// Create a copy of UserCreateRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCreateRequestModelCopyWith<UserCreateRequestModel> get copyWith => _$UserCreateRequestModelCopyWithImpl<UserCreateRequestModel>(this as UserCreateRequestModel, _$identity);

  /// Serializes this UserCreateRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserCreateRequestModel&&(identical(other.name, name) || other.name == name)&&(identical(other.cpf, cpf) || other.cpf == cpf)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,cpf,password);

@override
String toString() {
  return 'UserCreateRequestModel(name: $name, cpf: $cpf, password: $password)';
}


}

/// @nodoc
abstract mixin class $UserCreateRequestModelCopyWith<$Res>  {
  factory $UserCreateRequestModelCopyWith(UserCreateRequestModel value, $Res Function(UserCreateRequestModel) _then) = _$UserCreateRequestModelCopyWithImpl;
@useResult
$Res call({
 String name, String cpf, String password
});




}
/// @nodoc
class _$UserCreateRequestModelCopyWithImpl<$Res>
    implements $UserCreateRequestModelCopyWith<$Res> {
  _$UserCreateRequestModelCopyWithImpl(this._self, this._then);

  final UserCreateRequestModel _self;
  final $Res Function(UserCreateRequestModel) _then;

/// Create a copy of UserCreateRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? cpf = null,Object? password = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cpf: null == cpf ? _self.cpf : cpf // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserCreateRequestModel].
extension UserCreateRequestModelPatterns on UserCreateRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserCreateRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserCreateRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserCreateRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _UserCreateRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserCreateRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserCreateRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String cpf,  String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserCreateRequestModel() when $default != null:
return $default(_that.name,_that.cpf,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String cpf,  String password)  $default,) {final _that = this;
switch (_that) {
case _UserCreateRequestModel():
return $default(_that.name,_that.cpf,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String cpf,  String password)?  $default,) {final _that = this;
switch (_that) {
case _UserCreateRequestModel() when $default != null:
return $default(_that.name,_that.cpf,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserCreateRequestModel implements UserCreateRequestModel {
  const _UserCreateRequestModel({required this.name, required this.cpf, required this.password});
  factory _UserCreateRequestModel.fromJson(Map<String, dynamic> json) => _$UserCreateRequestModelFromJson(json);

@override final  String name;
@override final  String cpf;
@override final  String password;

/// Create a copy of UserCreateRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCreateRequestModelCopyWith<_UserCreateRequestModel> get copyWith => __$UserCreateRequestModelCopyWithImpl<_UserCreateRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserCreateRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserCreateRequestModel&&(identical(other.name, name) || other.name == name)&&(identical(other.cpf, cpf) || other.cpf == cpf)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,cpf,password);

@override
String toString() {
  return 'UserCreateRequestModel(name: $name, cpf: $cpf, password: $password)';
}


}

/// @nodoc
abstract mixin class _$UserCreateRequestModelCopyWith<$Res> implements $UserCreateRequestModelCopyWith<$Res> {
  factory _$UserCreateRequestModelCopyWith(_UserCreateRequestModel value, $Res Function(_UserCreateRequestModel) _then) = __$UserCreateRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String cpf, String password
});




}
/// @nodoc
class __$UserCreateRequestModelCopyWithImpl<$Res>
    implements _$UserCreateRequestModelCopyWith<$Res> {
  __$UserCreateRequestModelCopyWithImpl(this._self, this._then);

  final _UserCreateRequestModel _self;
  final $Res Function(_UserCreateRequestModel) _then;

/// Create a copy of UserCreateRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? cpf = null,Object? password = null,}) {
  return _then(_UserCreateRequestModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cpf: null == cpf ? _self.cpf : cpf // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
