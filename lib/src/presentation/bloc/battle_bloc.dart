import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:catch_anything/src/domain/creature.dart';

part 'battle_event.dart';
part 'battle_state.dart';

class BattleBloc extends Bloc<BattleEvent, BattleState> {
  BattleBloc() : super(BattleInitial()) {
    on<BattleStarted>((event, emit) {
      emit(BattleInProgress(event.playerCreature, event.opponentCreature));
    });

    on<AttackButtonPressed>((event, emit) {
      if (state is BattleInProgress) {
        final currentState = state as BattleInProgress;
        final player = currentState.playerCreature;
        final opponent = currentState.opponentCreature;

        // Simple damage calculation
        final damage = (player.stats['attack']! * 0.2) + Random().nextInt(10);
        final newOpponentHp = opponent.currentHp - damage;

        if (newOpponentHp <= 0) {
          emit(BattleFinished(player));
        } else {
          final newOpponent = opponent.copyWith(currentHp: newOpponentHp);
          // For simplicity, opponent attacks back immediately
          final opponentDamage =
              (newOpponent.stats['attack']! * 0.2) + Random().nextInt(10);
          final newPlayerHp = player.currentHp - opponentDamage;

          if (newPlayerHp <= 0) {
            emit(BattleFinished(newOpponent));
          } else {
            final newPlayer = player.copyWith(currentHp: newPlayerHp);
            emit(BattleInProgress(newPlayer, newOpponent));
          }
        }
      }
    });
  }
}
