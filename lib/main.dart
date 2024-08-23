import 'package:flutter/material.dart';
import 'package:audio_player/bloc/audio_player/audio_player_bloc.dart';
import 'package:audio_player/presentation/screens/audio_player_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.black,
        debugShowCheckedModeBanner: false,
        title: 'My Audio Player',
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromARGB(255, 250, 248, 248))),
        home: BlocProvider(
            create: (context) => AudioPlayerBloc(),
            child: const AudioPlayerScreen()));
  }
}
