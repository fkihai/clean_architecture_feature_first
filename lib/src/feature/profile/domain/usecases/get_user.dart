import 'package:clean_architecture_feature_first/src/feature/profile/domain/entities/profile.dart';
import 'package:clean_architecture_feature_first/src/feature/profile/domain/repository/profile_repo.dart';
import 'package:dartz/dartz.dart';

class GetUser {
  final ProfileRepo profileRepo;
  GetUser({required this.profileRepo});
  Future<Either<Exception, Profile>> excute(int id) async {
    final result = await profileRepo.getProfile(id);
    return result;
  }
}
