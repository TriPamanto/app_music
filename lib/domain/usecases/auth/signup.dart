import 'package:app_music/core/usecase/usecase.dart';
import 'package:app_music/data/models/auth/create_user_req.dart';
import 'package:app_music/domain/repository/auth/auth.dart';
import 'package:app_music/service_locator.dart';
import 'package:dartz/dartz.dart';

class SignupUseCase implements UseCase<Either, CreateUserReq> {
  @override
  Future<Either> call({CreateUserReq? params}) async {
    return sl<AuthRepository>().signup(params!);
  }
}
