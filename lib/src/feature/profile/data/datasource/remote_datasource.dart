import 'dart:convert';

import 'package:clean_architecture_feature_first/src/error/exception.dart';

import '../model/profile_model.dart';
import 'package:http/http.dart' as http;

abstract class RemoteDataSource {
  Future<ProfileModel> getUser(int id);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  @override
  Future<ProfileModel> getUser(int id) async {
    Uri url = Uri.parse("https://reqres.in/api/users/$id");
    var response = await http.get(url);

    if (response.statusCode == 200) {
      Map<String, dynamic> dataBody = json.decode(response.body);
      return ProfileModel.fromJson(dataBody['data']);
    } else {
      throw GeneralException(message: "Failed Fetch Data Api");
    }
  }
}
