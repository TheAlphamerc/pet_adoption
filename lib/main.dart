import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/pet_bloc.dart';
import 'repositories/pet_repository.dart';
import 'screens/home_screen.dart';
import 'theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pawz',
      theme: const MaterialTheme().light(),
      darkTheme: const MaterialTheme().dark(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      home: BlocProvider(
        create: (context) => PetBloc(PetRepository())..add(LoadPets()),
        child: const HomeScreen(),
      ),
    );
  }
}
