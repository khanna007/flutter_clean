
import 'package:equatable/equatable.dart';


abstract class SampleNewEvent extends Equatable {
  const SampleNewEvent();
}


class SampleNewDetailsLoadingEvent extends SampleNewEvent {
  const SampleNewDetailsLoadingEvent();

  @override
  List<Object> get props => [];
}
