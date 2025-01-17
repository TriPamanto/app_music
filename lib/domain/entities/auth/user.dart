class UserEntity {
  String? userId;
  String? fullName;
  String? email;

  UserEntity({
    this.userId,
    this.fullName,
    this.email,
    String? imageURL,
  });

  get imageURL => null;
}
