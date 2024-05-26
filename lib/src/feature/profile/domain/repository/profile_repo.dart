import 'package:clean_architecture_feature_first/src/feature/profile/domain/entities/profile.dart';
import 'package:dartz/dartz.dart';

abstract class ProfileRepo {
  Future<Either<Exception, Profile>> getProfile(int id);
}
