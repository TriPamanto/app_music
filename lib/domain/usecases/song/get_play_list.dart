import 'package:app_music/core/usecase/usecase.dart';
import 'package:dartz/dartz.dart';

import '../../../service_locator.dart';
import '../../repository/song/song.dart';

class GetPlayListUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<SongsRepository>().getPlayList();
  }
}
