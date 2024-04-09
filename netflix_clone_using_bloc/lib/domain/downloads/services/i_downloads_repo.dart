import 'package:dartz/dartz.dart';
import 'package:netflix_clone_using_bloc/domain/core/failures/downloads_failures.dart';
import 'package:netflix_clone_using_bloc/domain/downloads/model/downloads_model.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailure, List<DownloadsPage>>> getDownloadsImages();
}
