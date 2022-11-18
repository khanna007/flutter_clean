import 'package:dio/dio.dart';
import 'package:samplenew/data/repository/remote_service/sample_new_repository.dart';

class SampleNewUseCases {
  final SampleNewRepository repository;

  SampleNewUseCases(this.repository);

  Future <Response?> getBillDetails() {
    print("yes i am here");
    return repository.getSampleData();
  }
}
