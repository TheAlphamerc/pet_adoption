import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_adoption/utils/data.dart';
import 'package:pet_adoption/widgets/confetti.dart';

import '../bloc/pet_bloc.dart';
import '../models/pet_model.dart';

class DetailsScreen extends StatelessWidget {
  final Pet pet;

  const DetailsScreen({super.key, required this.pet});

  static Route<T> getRoute<T>(PetBloc block, Pet pet) {
    return MaterialPageRoute(
      builder: (_) => BlocProvider.value(
        value: block,
        child: DetailsScreen(
          pet: pet,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pet.name),
      ),
      body: Column(
        children: [
          Hero(
            tag: pet.id,
            child: Image.network(Data.getPicture(pet.type, pet.id)),
          ),
          Text('Age: ${pet.age}'),
          Text('Price: \$${pet.price}'),
          if (!pet.isAdopted)
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<PetBloc>(context).add(AdoptPet(pet.id));
                showDialog(
                  context: context,
                  builder: (context) => ConfettiPopup(petName: pet.name),
                );
              },
              child: const Text('Adopt Me'),
            ),
        ],
      ),
    );
  }
}
