import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_dbca/config/injectable/injectable_dependencies.dart';

import '../bloc/home_bloc/home_bloc.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  static const String name = 'home';
  static const String path = '/home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => getIt<HomeBloc>()..add(const HomeEvent.started()),
      child: const HomeView(),
    );
  }
}


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
  final HomeBloc bloc = context.watch<HomeBloc>();
    return Scaffold(
      body: ListView.builder(
        itemCount: bloc.state.movies.length,
        itemBuilder: (context, index) {
          final movie = bloc.state.movies[index];
          return ListTile(
            title: Text(movie.title),
            subtitle: Text(movie.overview ?? ''),
            
          );
        },
      ),
    );
  }
}