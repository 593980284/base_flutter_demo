import 'package:dio/dio.dart';
import 'modelMapping.dart';
import './net.dart';

class NetError extends Error{
  NetError(this.code,this.msg):super();
  String msg;
  int code;
}

Future<T> NetRequest<T>(dynamic api, {Map params}) async{
  String path = '';
  String method = 'POST';
  if (api is String) {
    path = api;
  } else if(api is List){
    for(int i = 0; i<api.length; i++){
      if(i == 0){
        path = api[0];
        continue;
      }
       if(i == 1){
        method=api[1];
        break;
      }
    }
  }
  try{
   Response response = await hc_dio.request<Map<String, dynamic>>(
                                  path, 
                                  data: params,
                                  options: Options(method: method));
   Map body = response.data??{};
   int code = body["code"];
   String msg = body["msg"];
   String tString = T.toString();
   bool isList = tString.contains("List<") || tString=='List';

   String modelType = tString;
   if(tString.contains("List<")){
     modelType = tString.replaceAll("List<", "").replaceAll(">", "");
   }
   bool ismodel = Models[modelType] != null;

   if(code ==0){
     dynamic data = body["data"];
      if(ismodel){
       if(data is Map && !isList){

         data??={};
         return Models[T.toString()](data);
      }else if(data is List && isList){

         data??=[];
         return data.map((item){
             return Models[modelType](item);
          }).toList() as T;
      }
    }else{
         if(isList){
           return data??[] as T;
          }else{
           return data??{} as T;
          }
     }
    }
 
     return Future.error(NetError(code,msg));
  
  }catch (e){
      return Future.error(NetError(999,'!请求失败'));
  }
}

//添加header
void addHeaders(Map<String, dynamic> headers){
  hc_dio.options.headers.addAll(headers);
}

//根据key移除header
void removeHeader(String key){
  hc_dio.options.headers.remove(key);
}

//改变baseUrl
void changeBaseUrl(String baseUrl) {
  hc_dio.options.baseUrl = baseUrl;
}