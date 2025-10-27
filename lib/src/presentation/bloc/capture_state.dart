part of 'capture_bloc.dart';

abstract class CaptureState {}

class CaptureInitial extends CaptureState {}

class CaptureLoading extends CaptureState {}

class CaptureSuccess extends CaptureState {
  final Creature creature;

  CaptureSuccess(this.creature);
}

class CaptureFailure extends CaptureState {
  final String error;

  CaptureFailure(this.error);
}
