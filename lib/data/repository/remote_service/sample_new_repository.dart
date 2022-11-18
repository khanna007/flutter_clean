import 'package:dio/dio.dart';
import 'package:samplenew/core/Network/network_client.dart';

 import '../../model/home_mode.dart';

class SampleNewRepository {
  SampleNewRepository();
  HomeModel homeModel = HomeModel();

  Future <Response?>getSampleData()async{
    ApiClient req=ApiClient();
    print("i am here");
    try{
      Response? response = await req.getRequest("/us/33162");
      print("response ${response?.statusCode}");
      if(response?.statusCode==200){
        print("yes succss");
        print("response.data${response}");
        homeModel=HomeModel.fromJson(response?.data);
      }
    }catch(e){}
  }
}