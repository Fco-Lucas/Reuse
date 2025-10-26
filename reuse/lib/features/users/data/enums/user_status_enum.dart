enum UserStatusEnum {
  active,
  inactive,
  undefined;

  factory UserStatusEnum.fromJson(String value) {
    return UserStatusEnum.values.firstWhere(
      (e) => e.name.toUpperCase() == value.toUpperCase(),
      orElse: () => UserStatusEnum.undefined,
    );
  }

  String toJson() => name.toUpperCase();
}