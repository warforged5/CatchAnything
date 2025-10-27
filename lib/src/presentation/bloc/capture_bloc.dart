import 'package:bloc/bloc.dart';
import 'package:catch_anything/src/domain/creature.dart';
import 'package:catch_anything/src/data/repositories/creature_repository.dart';

part 'capture_event.dart';
part 'capture_state.dart';

class CaptureBloc extends Bloc<CaptureEvent, CaptureState> {
  final CreatureRepository creatureRepository;

  CaptureBloc({required this.creatureRepository}) : super(CaptureInitial()) {
    on<CaptureButtonPressed>((event, emit) async {
      emit(CaptureLoading());
      try {
        final creature = await creatureRepository.getCreature(event.input);
        emit(CaptureSuccess(creature));
      } catch (e) {
        emit(CaptureFailure(e.toString()));
      }
    });
  }
}
