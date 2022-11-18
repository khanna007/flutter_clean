import 'package:flutter/material.dart';
import 'package:samplenew/domain/use_case/sample_new_use_case.dart';
import 'package:samplenew/presentation/bloc/bloc_logic.dart';

import '../../data/repository/remote_service/sample_new_repository.dart';

class SampleView extends StatefulWidget {
  const SampleView({Key? key}) : super(key: key);

  @override
  State<SampleView> createState() => _SampleViewState();
}

class _SampleViewState extends State<SampleView> {
  SampleNewBloc? sampleNewBloc ;

  @override
  void initState() {
    super.initState();
    sampleNewBloc=SampleNewBloc(sampleNewUseCases: SampleNewUseCases(SampleNewRepository()));
    sampleNewBloc?.getSampleNewDetails();
  }
  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
