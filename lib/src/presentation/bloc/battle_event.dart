part of 'battle_bloc.dart';

abstract class BattleEvent {}

class BattleStarted extends BattleEvent {
  final Creature playerCreature;
  final Creature opponentCreature;

  BattleStarted(this.playerCreature, this.opponentCreature);
}

class AttackButtonPressed extends BattleEvent {}
