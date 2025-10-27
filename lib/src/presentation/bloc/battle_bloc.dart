import 'package:bloc/bloc.dart';
import 'package:catch_anything/src/domain/creature.dart';

part 'battle_event.dart';
part 'battle_state.dart';

class BattleBloc extends Bloc<BattleEvent, BattleState> {
  BattleBloc() : super(BattleInitial()) {
    on<BattleStarted>((event, emit) {
      // TODO: Implement battle logic
      emit(BattleInProgress(event.playerCreature, event.opponentCreature));
    });
  }
}
