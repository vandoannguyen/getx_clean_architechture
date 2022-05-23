import 'package:getx_clean_architechture/module/domain/repository/content_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ContentUseCase {
  ContentRepository contentRepository;
  @singleton
  ContentUseCase(this.contentRepository);
}
