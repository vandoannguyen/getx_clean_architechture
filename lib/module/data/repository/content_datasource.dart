import 'package:getx_clean_architechture/module/domain/repository/content_local_repository.dart';
import 'package:getx_clean_architechture/module/domain/repository/content_remote_repository.dart';
import 'package:getx_clean_architechture/module/domain/repository/content_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ContentRepository)
class ContentDataSource implements ContentRepository {
  ContentLocalRepository remote;
  ContentRemoteRepository local;

  @factoryMethod
  ContentDataSource(this.remote, this.local);

  @override
  Future getData() {
    return remote.getData();
  }

  @override
  Future getLocalData() {
    return local.getLocalData();
  }
}
