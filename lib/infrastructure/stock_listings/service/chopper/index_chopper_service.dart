import 'package:chopper/chopper.dart';
import 'package:stockz/infrastructure/stock_listings/models/index_model.dart';

part 'index_chopper_service.chopper.dart';

@ChopperApi(baseUrl: "/api/v3/symbol/available-indexes")
abstract class IndexChopperService extends ChopperService {
  @override
  Type get definitionType => runtimeType;

  static IndexChopperService create([ChopperClient? client]) => _$IndexChopperService(client);

  @Get(path: "/", optionalBody: true)
  Future<Response<List<IndexModel>>> getIndices();
}
