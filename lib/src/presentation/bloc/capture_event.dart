part of 'capture_bloc.dart';

abstract class CaptureEvent {}

class CaptureButtonPressed extends CaptureEvent {
  final String input;

  CaptureButtonPressed(this.input);
}
