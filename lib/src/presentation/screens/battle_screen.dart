import 'package:catch_anything/src/domain/creature.dart';
import 'package:catch_anything/src/presentation/bloc/battle_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BattleScreen extends StatefulWidget {
  const BattleScreen({super.key});

  @override
  State<BattleScreen> createState() => _BattleScreenState();
}

class _BattleScreenState extends State<BattleScreen> {
  late final BattleBloc _battleBloc;

  @override
  void initState() {
    super.initState();
    _battleBloc = BattleBloc();
  }

  @override
  Widget build(BuildContext context) {
    final playerCreature = Creature(
      id: '1',
      name: 'Player Creature',
      description: 'Description 1',
      imageUrl: 'https://picsum.photos/200',
      stats: {'hp': 100, 'attack': 100, 'defense': 100, 'speed': 100},
    );
    final opponentCreature = Creature(
      id: '2',
      name: 'Opponent Creature',
      description: 'Description 2',
      imageUrl: 'https://picsum.photos/200',
      stats: {'hp': 100, 'attack': 100, 'defense': 100, 'speed': 100},
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Battle')),
      body: BlocProvider(
        create: (context) => _battleBloc,
        child: BlocBuilder<BattleBloc, BattleState>(
          builder: (context, state) {
            if (state is BattleInitial) {
              return Center(
                child: ElevatedButton(
                  onPressed: () {
                    _battleBloc.add(
                      BattleStarted(playerCreature, opponentCreature),
                    );
                  },
                  child: const Text('Start Battle'),
                ),
              );
            }
            if (state is BattleInProgress) {
              return Column(
                children: [
                  Text(
                    '${state.playerCreature.name} vs ${state.opponentCreature.name}',
                  ),
                  // TODO: Implement battle UI
                ],
              );
            }
            if (state is BattleFinished) {
              return Center(child: Text('${state.winner.name} wins!'));
            }
            return const Center(child: Text('Something went wrong.'));
          },
        ),
      ),
    );
  }
}
