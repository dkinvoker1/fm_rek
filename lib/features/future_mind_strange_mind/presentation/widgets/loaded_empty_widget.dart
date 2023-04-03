import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fm_rek/features/future_mind_strange_mind/presentation/bloc/strange_mind_list_bloc.dart';

class LoadedEmptyWidget extends StatelessWidget {
  const LoadedEmptyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context
            .read<StrangeMindListBloc>()
            .add(const StrangeMindListEvent.load());
      },
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: TextButton(
              onPressed: () {
                context.read<StrangeMindListBloc>().add(
                      const StrangeMindListEvent.load(),
                    );
              },
              child: const Text('reload'),
            ),
          ),
        ),
      ),
    );
  }
}
