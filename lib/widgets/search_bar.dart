import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_adoption/bloc/pet_bloc.dart';
import 'package:pet_adoption/utils/extensions.dart';

class SearchPetField extends StatelessWidget {
  const SearchPetField({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(0.0),
        margin: const EdgeInsets.only(left: 20, right: 12),
        height: 50,
        decoration: BoxDecoration(
          color: context.colorScheme.primary.withOpacity(.09),
          border: Border.all(
              color: context.theme.dividerColor.withOpacity(.5), width: .7),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            contentPadding: const EdgeInsets.only(left: 20),
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
          onChanged: (value) => context.read<PetBloc>().add(SearchPets(value)),
        ),
      ),
    );
  }
}
