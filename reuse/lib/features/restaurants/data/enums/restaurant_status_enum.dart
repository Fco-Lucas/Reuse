enum RestaurantStatusEnum {
  active,
  inactive,
  undefined;

  factory RestaurantStatusEnum.fromJson(String value) {
    return RestaurantStatusEnum.values.firstWhere(
      (e) => e.name.toUpperCase() == value.toUpperCase(),
      orElse: () => RestaurantStatusEnum.undefined,
    );
  }

  String toJson() => name.toUpperCase();
}