// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserProfileModel {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileModel);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserProfileModel()';
}


}

/// @nodoc
class $UserProfileModelCopyWith<$Res>  {
$UserProfileModelCopyWith(UserProfileModel _, $Res Function(UserProfileModel) __);
}


/// Adds pattern-matching-related methods to [UserProfileModel].
extension UserProfileModelPatterns on UserProfileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _UserProfileUser value)?  user,TResult Function( _UserProfileRestaurant value)?  restaurant,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfileUser() when user != null:
return user(_that);case _UserProfileRestaurant() when restaurant != null:
return restaurant(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _UserProfileUser value)  user,required TResult Function( _UserProfileRestaurant value)  restaurant,}){
final _that = this;
switch (_that) {
case _UserProfileUser():
return user(_that);case _UserProfileRestaurant():
return restaurant(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _UserProfileUser value)?  user,TResult? Function( _UserProfileRestaurant value)?  restaurant,}){
final _that = this;
switch (_that) {
case _UserProfileUser() when user != null:
return user(_that);case _UserProfileRestaurant() when restaurant != null:
return restaurant(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( UserResponseModel user)?  user,TResult Function( RestaurantResponseModel restaurant)?  restaurant,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfileUser() when user != null:
return user(_that.user);case _UserProfileRestaurant() when restaurant != null:
return restaurant(_that.restaurant);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( UserResponseModel user)  user,required TResult Function( RestaurantResponseModel restaurant)  restaurant,}) {final _that = this;
switch (_that) {
case _UserProfileUser():
return user(_that.user);case _UserProfileRestaurant():
return restaurant(_that.restaurant);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( UserResponseModel user)?  user,TResult? Function( RestaurantResponseModel restaurant)?  restaurant,}) {final _that = this;
switch (_that) {
case _UserProfileUser() when user != null:
return user(_that.user);case _UserProfileRestaurant() when restaurant != null:
return restaurant(_that.restaurant);case _:
  return null;

}
}

}

/// @nodoc


class _UserProfileUser implements UserProfileModel {
  const _UserProfileUser(this.user);
  

 final  UserResponseModel user;

/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileUserCopyWith<_UserProfileUser> get copyWith => __$UserProfileUserCopyWithImpl<_UserProfileUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfileUser&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'UserProfileModel.user(user: $user)';
}


}

/// @nodoc
abstract mixin class _$UserProfileUserCopyWith<$Res> implements $UserProfileModelCopyWith<$Res> {
  factory _$UserProfileUserCopyWith(_UserProfileUser value, $Res Function(_UserProfileUser) _then) = __$UserProfileUserCopyWithImpl;
@useResult
$Res call({
 UserResponseModel user
});


$UserResponseModelCopyWith<$Res> get user;

}
/// @nodoc
class __$UserProfileUserCopyWithImpl<$Res>
    implements _$UserProfileUserCopyWith<$Res> {
  __$UserProfileUserCopyWithImpl(this._self, this._then);

  final _UserProfileUser _self;
  final $Res Function(_UserProfileUser) _then;

/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_UserProfileUser(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserResponseModel,
  ));
}

/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserResponseModelCopyWith<$Res> get user {
  
  return $UserResponseModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _UserProfileRestaurant implements UserProfileModel {
  const _UserProfileRestaurant(this.restaurant);
  

 final  RestaurantResponseModel restaurant;

/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileRestaurantCopyWith<_UserProfileRestaurant> get copyWith => __$UserProfileRestaurantCopyWithImpl<_UserProfileRestaurant>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfileRestaurant&&(identical(other.restaurant, restaurant) || other.restaurant == restaurant));
}


@override
int get hashCode => Object.hash(runtimeType,restaurant);

@override
String toString() {
  return 'UserProfileModel.restaurant(restaurant: $restaurant)';
}


}

/// @nodoc
abstract mixin class _$UserProfileRestaurantCopyWith<$Res> implements $UserProfileModelCopyWith<$Res> {
  factory _$UserProfileRestaurantCopyWith(_UserProfileRestaurant value, $Res Function(_UserProfileRestaurant) _then) = __$UserProfileRestaurantCopyWithImpl;
@useResult
$Res call({
 RestaurantResponseModel restaurant
});


$RestaurantResponseModelCopyWith<$Res> get restaurant;

}
/// @nodoc
class __$UserProfileRestaurantCopyWithImpl<$Res>
    implements _$UserProfileRestaurantCopyWith<$Res> {
  __$UserProfileRestaurantCopyWithImpl(this._self, this._then);

  final _UserProfileRestaurant _self;
  final $Res Function(_UserProfileRestaurant) _then;

/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? restaurant = null,}) {
  return _then(_UserProfileRestaurant(
null == restaurant ? _self.restaurant : restaurant // ignore: cast_nullable_to_non_nullable
as RestaurantResponseModel,
  ));
}

/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RestaurantResponseModelCopyWith<$Res> get restaurant {
  
  return $RestaurantResponseModelCopyWith<$Res>(_self.restaurant, (value) {
    return _then(_self.copyWith(restaurant: value));
  });
}
}

// dart format on
