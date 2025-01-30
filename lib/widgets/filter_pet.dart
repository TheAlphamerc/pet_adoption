import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_adoption/bloc/pet_bloc.dart';
import 'package:pet_adoption/models/pet_model.dart';
import 'package:pet_adoption/utils/extensions.dart';

class FilterPet extends StatelessWidget {
  const FilterPet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      constraints: const BoxConstraints(maxWidth: 100),
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
        top: 5,
        bottom: 5,
      ),
      decoration: BoxDecoration(
        color: context.colorScheme.primary.withOpacity(.09),
        border: Border.all(
            color: context.theme.dividerColor.withOpacity(.5), width: .7),
        borderRadius: BorderRadius.circular(10),
      ),
      child: BlocBuilder<PetBloc, PetState>(builder: (context, state) {
        return DropdownButton<String>(
          alignment: Alignment.bottomCenter,
          icon: const Icon(Icons.arrow_drop_down, size: 20),
          isExpanded: true,
          underline: const SizedBox(),
          value: state.filter,
          items: <String>[
            Species.ALL.name,
            Species.CAT.name,
            Species.DOG.name,
            Species.RABBIT.name,
          ].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: context.theme.textTheme.bodyMedium,
              ),
            );
          }).toList(),
          onChanged: (val) {
            context.read<PetBloc>().add(FilterPets(val!));
          },
        );
      }),
    );
  }
}
