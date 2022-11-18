
import 'package:equatable/equatable.dart';

import '../../data/model/home_mode.dart';

abstract class SampleDetailState extends Equatable {
  const SampleDetailState();
}

class SampleDetailInitialState extends SampleDetailState {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class SampleDetailLoadingState extends SampleDetailState {
  @override
  List<Object?> get props => [];
}


class BillDetailsSuccessState extends SampleDetailState {
  final HomeModel homeModel;

  const BillDetailsSuccessState({required this.homeModel,});

  @override
  List<Object> get props => [homeModel];
}
class SampleDetailsFailureState extends SampleDetailState {
  final String errorMessage;

  const SampleDetailsFailureState({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage,  ];
}