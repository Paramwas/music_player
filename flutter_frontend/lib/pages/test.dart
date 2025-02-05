import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:produv/provider/image.dart';

class Right extends ConsumerStatefulWidget {
  const Right({super.key});

  @override
  ConsumerState<Right> createState() => _RightState();
}

class _RightState extends ConsumerState<Right> {
  @override
  Widget build(BuildContext context) {
    final scream = ref.watch(retiveSongProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Songs List'),
      ),
      body: scream.when(
        data: (songs) => Column(
            children: songs
                .map((sucks) => Column(
                      children: [
                        Text(sucks.image),
                        Text(sucks.tag),
                        Text(sucks.number)
                      ],
                    ))
                .toList()),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
