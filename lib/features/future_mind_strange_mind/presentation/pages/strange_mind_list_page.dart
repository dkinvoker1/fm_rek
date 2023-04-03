import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../dependency_injection.dart';
import '../bloc/strange_mind_list_bloc.dart';
import '../widgets/widgets.dart';

class StrangeMindListPage extends StatelessWidget {
  const StrangeMindListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Strange Mind')),
        ),
        body: BlocProvider(
          create: (context) => di<StrangeMindListBloc>(),
          child: const StrangeMindListView(),
        ));
  }
}

class StrangeMindListView extends StatefulWidget {
  const StrangeMindListView({Key? key}) : super(key: key);

  @override
  State<StrangeMindListView> createState() => _StrangeMindListViewState();
}

class _StrangeMindListViewState extends State<StrangeMindListView> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<StrangeMindListBloc>().add(const StrangeMindListEvent.load());
  }

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<StrangeMindListBloc, StrangeMindListState>(
        builder: (context, state) {
          return state.maybeWhen(
            initial: () => const LoadingWidget(),
            loading: () => const LoadingWidget(),
            loaded: (strangeMindsList) => StrangeMindsListWidget(
              strangeMindsList: strangeMindsList,
            ),
            loadedEmpty: () => const LoadedEmptyWidget(),
            error: (errorMessage) => ErrorDisplayWidget(
              message: errorMessage,
            ),
            orElse: () => const SizedBox.shrink(),
          );
        },
      );
}
