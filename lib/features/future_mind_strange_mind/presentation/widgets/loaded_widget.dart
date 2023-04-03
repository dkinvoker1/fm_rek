import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fm_rek/features/future_mind_strange_mind/domain/entities/strange_mind_entity.dart';
import 'package:fm_rek/features/future_mind_strange_mind/presentation/bloc/strange_mind_list_bloc.dart';

import 'strange_mind_widget.dart';

class StrangeMindsListWidget extends StatelessWidget {
  const StrangeMindsListWidget({
    super.key,
    required this.strangeMindsList,
  });

  final List<StrangeMindEntity> strangeMindsList;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<StrangeMindListBloc>().add(
              const StrangeMindListEvent.load(),
            );
      },
      child: ListView.builder(
        itemCount: strangeMindsList.length,
        itemBuilder: (BuildContext context, int index) {
          return StrangeMindWidget(
            strangeMind: strangeMindsList[index],
          );
        },
      ),
    );
  }
}
