import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'strings.dart';

// service to manage http api
final httpClientProvider = StateNotifierProvider<HttpService, Dio>(
  (ref) => HttpService(ref),
);

class HttpService extends StateNotifier<Dio> {
  HttpService(this.ref)
      : super(Dio(BaseOptions(
          receiveTimeout: StringsAndConsts.TIMEOUT,
        )));

  final Ref ref;

  // dio get call with url and query parameters
  Future<Response?> get(String url) async {
    try {
      final response = await state.get(url,
          options: Options(
              sendTimeout: StringsAndConsts.TIMEOUT,
              receiveTimeout: StringsAndConsts.TIMEOUT));

      // validate response
      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception("Could not get $url, ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Could not get $url, $e");
    }
  }
}
