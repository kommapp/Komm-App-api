import 'package:dio/dio.dart';
import 'package:openapi_dart_common/openapi.dart';

class ConsoleLoggerApiDelegate extends DioClientDelegate {
  final _watch = Stopwatch();

  @override
  Future<ApiResponse> invokeAPI(String basePath, String path, Iterable<QueryParam> queryParams, Object? body, Options options, {bool passErrorsAsApiResponses = false}) {
    final watchers = <String, Stopwatch>{};

    if (!watchers.containsKey(path)) {
      watchers[path] = Stopwatch()..start();
    }

    queryParams.forEach((element) {
      print("Query param: ${element.name} = ${element.value}");
    });
    
    print("Iniciando llamada a $basePath$path  (${DateTime.now()})");

    var response = super.invokeAPI(basePath, path, queryParams, body, options, passErrorsAsApiResponses: passErrorsAsApiResponses);
    response.then((_) {
      watchers[path]!.stop();
      print("Llamada finalizada a $basePath $path (${DateTime.now()}), tiempo transcurrido: ${watchers[path]!.elapsedMilliseconds} ms");

    }).catchError((error) {
      watchers[path]!.stop();
      print(error);
    });

    return response;
  }
}
