// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserResponseModel {

 String get id; DateTime get createdAt; String get name; String get cpf; UserStatusEnum get status;
/// Create a copy of UserResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserResponseModelCopyWith<UserResponseModel> get copyWith => _$UserResponseModelCopyWithImpl<UserResponseModel>(this as UserResponseModel, _$identity);

  /// Serializes this UserResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.cpf, cpf) || other.cpf == cpf)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,name,cpf,status);

@override
String toString() {
  return 'UserResponseModel(id: $id, createdAt: $createdAt, name: $name, cpf: $cpf, status: $status)';
}


}

/// @nodoc
abstract mixin class $UserResponseModelCopyWith<$Res>  {
  factory $UserResponseModelCopyWith(UserResponseModel value, $Res Function(UserResponseModel) _then) = _$UserResponseModelCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, String name, String cpf, UserStatusEnum status
});




}
/// @nodoc
class _$UserResponseModelCopyWithImpl<$Res>
    implements $UserResponseModelCopyWith<$Res> {
  _$UserResponseModelCopyWithImpl(this._self, this._then);

  final UserResponseModel _self;
  final $Res Function(UserResponseModel) _then;

/// Create a copy of UserResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? name = null,Object? cpf = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cpf: null == cpf ? _self.cpf : cpf // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UserStatusEnum,
  ));
}

}


/// Adds pattern-matching-related methods to [UserResponseModel].
extension UserResponseModelPatterns on UserResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _UserResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  String name,  String cpf,  UserStatusEnum status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserResponseModel() when $default != null:
return $default(_that.id,_that.createdAt,_that.name,_that.cpf,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  String name,  String cpf,  UserStatusEnum status)  $default,) {final _that = this;
switch (_that) {
case _UserResponseModel():
return $default(_that.id,_that.createdAt,_that.name,_that.cpf,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  String name,  String cpf,  UserStatusEnum status)?  $default,) {final _that = this;
switch (_that) {
case _UserResponseModel() when $default != null:
return $default(_that.id,_that.createdAt,_that.name,_that.cpf,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserResponseModel implements UserResponseModel {
  const _UserResponseModel({required this.id, required this.createdAt, required this.name, required this.cpf, required this.status});
  factory _UserResponseModel.fromJson(Map<String, dynamic> json) => _$UserResponseModelFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
@override final  String name;
@override final  String cpf;
@override final  UserStatusEnum status;

/// Create a copy of UserResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserResponseModelCopyWith<_UserResponseModel> get copyWith => __$UserResponseModelCopyWithImpl<_UserResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserResponseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.cpf, cpf) || other.cpf == cpf)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,name,cpf,status);

@override
String toString() {
  return 'UserResponseModel(id: $id, createdAt: $createdAt, name: $name, cpf: $cpf, status: $status)';
}


}

/// @nodoc
abstract mixin class _$UserResponseModelCopyWith<$Res> implements $UserResponseModelCopyWith<$Res> {
  factory _$UserResponseModelCopyWith(_UserResponseModel value, $Res Function(_UserResponseModel) _then) = __$UserResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, String name, String cpf, UserStatusEnum status
});




}
/// @nodoc
class __$UserResponseModelCopyWithImpl<$Res>
    implements _$UserResponseModelCopyWith<$Res> {
  __$UserResponseModelCopyWithImpl(this._self, this._then);

  final _UserResponseModel _self;
  final $Res Function(_UserResponseModel) _then;

/// Create a copy of UserResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? name = null,Object? cpf = null,Object? status = null,}) {
  return _then(_UserResponseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cpf: null == cpf ? _self.cpf : cpf // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UserStatusEnum,
  ));
}


}

// dart format on
