import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_dbca/config/injectable/injectable_dependencies.dart';
import 'package:movie_dbca/modules/home/domain/entities/movie_entity.dart';

import '../bloc/home_bloc/home_bloc.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/movie_slider.dart';

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
      appBar: CustomAppBar(),
      body: Column(
        children: [
          MovieSlider(bloc: bloc)
        ],
      ),
    );
  }
}
