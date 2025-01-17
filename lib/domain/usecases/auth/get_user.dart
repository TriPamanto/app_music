import 'package:app_music/core/usecase/usecase.dart';
import 'package:app_music/domain/repository/auth/auth.dart';
import 'package:dartz/dartz.dart';

import '../../../service_locator.dart';

class GetUserUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<AuthRepository>().getUser();
  }
}
