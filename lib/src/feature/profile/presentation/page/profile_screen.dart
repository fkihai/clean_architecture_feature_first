import 'dart:developer';

import 'package:flutter/material.dart';

import '../../data/datasource/remote_datasource.dart';
import '../../data/repository/profile_repo_impl.dart';
import '../../domain/usecases/get_user.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  final RemoteDataSourceImpl remoteDataSourceImpl = RemoteDataSourceImpl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('test'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            GetUser getUser = GetUser(
              profileRepo: ProfileRepoImpl(remoteDataSourceImpl),
            );
            final result = await getUser.excute(2);
            result.fold((l) => log('fail'), (r) => log(r.firstName));
          },
          child: const Text('TEST'),
        ),
      ),
    );
  }
}
