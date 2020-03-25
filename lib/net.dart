import 'package:dio/dio.dart';

Dio dio = Dio(BaseOptions(
    baseUrl: "https://www.baidu.com",
    connectTimeout: 5000,
    receiveTimeout: 3000,
));


void initDio(){
  addInterceptors();
}

void addInterceptors(){
   dio.interceptors.add(InterceptorsWrapper(
    onRequest:(RequestOptions options) async {
      //添加header
     return options;
    },
    onResponse:(Response response) async {
     print(response.data);
     return response;
    },
    onError: (DioError e) async {
     return  e;
    }
));
}

void changeBaseUrl(String baseUrl){
  dio.options.baseUrl = baseUrl;
}


