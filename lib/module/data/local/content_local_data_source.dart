import 'package:getx_clean_architechture/module/domain/repository/content_local_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ContentLocalRepository)
class ContentLocalDataSource implements ContentLocalRepository {
  @override
  Future getData() {
    throw UnimplementedError();
  }

  @factoryMethod
  ContentLocalDataSource();
}
