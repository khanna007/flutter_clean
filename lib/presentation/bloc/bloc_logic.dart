import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:samplenew/core/Network/network_client.dart';
import 'package:samplenew/presentation/bloc/bloc_event.dart';
import 'package:samplenew/presentation/bloc/bloc_state.dart';

import '../../data/model/home_mode.dart';
import '../../domain/use_case/sample_new_use_case.dart';




class SampleNewBloc extends Bloc<SampleNewEvent,SampleDetailState>{

  SampleNewUseCases sampleNewUseCases;
  SampleNewBloc({required this.sampleNewUseCases})
      : super(SampleDetailInitialState());

   getSampleNewDetails()async{
  add(SampleNewDetailsLoadingEvent());
  }
  @override
    Stream<SampleDetailState>mapEventToState(SampleNewEvent event) async* {
       try{
       final  Response? response = await sampleNewUseCases.getBillDetails();
         print("this response ${response?.statusCode}");
         if(response==null){
           yield SampleDetailsFailureState(errorMessage: 'Something went wrong');
         }else{
           if(response.statusCode==200){
             HomeModel homeModel = response.data;
             print("success $homeModel");
           }
         }
       }catch(e){
         print("this bloc e$e");
       }



  }



}