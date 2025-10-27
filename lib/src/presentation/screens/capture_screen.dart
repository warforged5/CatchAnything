import 'package:catch_anything/src/data/datasources/creature_datasource.dart';
import 'package:catch_anything/src/data/repositories/creature_repository_impl.dart';
import 'package:catch_anything/src/presentation/bloc/capture_bloc.dart';
import 'package:catch_anything/src/presentation/screens/collection_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CaptureScreen extends StatefulWidget {
  const CaptureScreen({super.key});

  @override
  State<CaptureScreen> createState() => _CaptureScreenState();
}

class _CaptureScreenState extends State<CaptureScreen> {
  late final CaptureBloc _captureBloc;
  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _captureBloc = CaptureBloc(
      creatureRepository: CreatureRepositoryImpl(
        creatureDatasource: GeminiCreatureDatasource(apiKey: 'YOUR_API_KEY'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Capture Creature'),
        actions: [
          IconButton(
            icon: const Icon(Icons.collections),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CollectionScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: BlocProvider(
        create: (context) => _captureBloc,
        child: BlocBuilder<CaptureBloc, CaptureState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: _textController,
                    decoration: const InputDecoration(
                      labelText: 'Enter a creature name',
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      _captureBloc.add(
                        CaptureButtonPressed(_textController.text),
                      );
                    },
                    child: const Text('Capture'),
                  ),
                  const SizedBox(height: 16),
                  if (state is CaptureLoading)
                    const CircularProgressIndicator(),
                  if (state is CaptureSuccess)
                    Column(
                      children: [
                        Text(state.creature.name),
                        Text(state.creature.description),
                        Image.network(state.creature.imageUrl),
                        Text('HP: ${state.creature.stats['hp']}'),
                        Text('Attack: ${state.creature.stats['attack']}'),
                        Text('Defense: ${state.creature.stats['defense']}'),
                        Text('Speed: ${state.creature.stats['speed']}'),
                      ],
                    ),
                  if (state is CaptureFailure) Text(state.error),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
