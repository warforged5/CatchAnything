part of 'battle_bloc.dart';

abstract class BattleState {}

class BattleInitial extends BattleState {}

class BattleInProgress extends BattleState {
  final Creature playerCreature;
  final Creature opponentCreature;

  BattleInProgress(this.playerCreature, this.opponentCreature);
}

class BattleFinished extends BattleState {
  final Creature winner;

  BattleFinished(this.winner);
}
