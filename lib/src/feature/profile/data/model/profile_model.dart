import '../../domain/entities/profile.dart';

class ProfileModel extends Profile {
  ProfileModel(
    super.id,
    super.email,
    super.firstName,
    super.lastName,
    super.avatar,
  );

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      json['id'],
      json['email'],
      json['first_name'],
      json['last_name'],
      json['avatar'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "email": email,
      "first_name": firstName,
      "last_name": lastName,
      "avatar": avatar,
    };
  }
}
