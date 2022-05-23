import 'package:getx_clean_architechture/module/domain/repository/content_local_repository.dart';
import 'package:getx_clean_architechture/module/domain/repository/content_remote_repository.dart';

abstract class ContentRepository
    implements ContentRemoteRepository, ContentLocalRepository {}
