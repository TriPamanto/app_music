import 'package:app_music/core/usecase/usecase.dart';
import 'package:app_music/data/models/auth/signin_user_req.dart';
import 'package:app_music/domain/repository/auth/auth.dart';
import 'package:app_music/service_locator.dart';
import 'package:dartz/dartz.dart';

class SigninUseCase implements UseCase<Either, SigninUserReq> {
  @override
  Future<Either> call({SigninUserReq? params}) async {
    return sl<AuthRepository>().signin(params!);
  }
}
