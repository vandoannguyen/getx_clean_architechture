import 'package:getx_clean_architechture/module/domain/repository/content_remote_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ContentRemoteRepository)
class ContentRemoteDataSource implements ContentRemoteRepository {
  @factoryMethod
  ContentRemoteDataSource();

  @override
  Future getLocalData() {
    // TODO: implement getLocalData
    throw UnimplementedError();
  }
}
