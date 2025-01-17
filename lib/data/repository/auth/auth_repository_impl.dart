import 'package:app_music/data/models/auth/create_user_req.dart';
import 'package:app_music/data/models/auth/signin_user_req.dart';
import 'package:app_music/data/sources/auth/auth_firebase_service.dart';
import 'package:app_music/domain/repository/auth/auth.dart';
import 'package:app_music/service_locator.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signin(SigninUserReq signinUserReq) async {
    return await sl<AuthFirebaseService>().signin(signinUserReq);
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async {
    return await sl<AuthFirebaseService>().signup(createUserReq);
  }

  @override
  Future<Either> getUser() async {
    return await sl<AuthFirebaseService>().getUser();
  }
}
