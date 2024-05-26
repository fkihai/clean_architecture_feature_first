import 'dart:developer';

import 'package:dartz/dartz.dart';

import '../../domain/entities/profile.dart';
import '../../domain/repository/profile_repo.dart';
import '../datasource/remote_datasource.dart';

class ProfileRepoImpl implements ProfileRepo {
  final RemoteDataSourceImpl remoteDataSourceImpl;
  ProfileRepoImpl(this.remoteDataSourceImpl);

  @override
  Future<Either<Exception, Profile>> getProfile(int id) async {
    try {
      final profileModel = await remoteDataSourceImpl.getUser(id);
      return right(profileModel);
    } catch (e) {
      return left(Exception());
    }
  }
}
