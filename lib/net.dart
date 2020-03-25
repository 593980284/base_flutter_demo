import 'package:dio/dio.dart';

Dio hc_dio = Dio(BaseOptions(
  baseUrl: "https://www.baidu.com",
  connectTimeout: 5000,
  receiveTimeout: 3000,
));

int initDio() {
  addInterceptors();
  setHeaders({});
  return 0;
}

//为了调用方法
int ___initDio = initDio();

void setHeaders(Map<String, dynamic> headers) {
  hc_dio.options.headers = headers;
}

void addInterceptors() {
  hc_dio.interceptors
      .add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
    //添加header
    return options;
  }, onResponse: (Response response) async {
    return response;
  }, onError: (DioError e) async {
    return e;
  }));
}

