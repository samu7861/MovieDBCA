// import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:adaptive_theme/adaptive_theme.dart';

import '../config/routes/app_router.dart';
// import '../config/routes/auto_router_manager.dart';
import 'global/presentation/bloc/global_bloc.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => GlobalBloc())],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const title = 'MovieDBCA';

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return AdaptiveTheme(
      dark: ThemeData.dark(),
      light: ThemeData.light(),
      initial: AdaptiveThemeMode.dark,
      builder: (theme, dark) => MaterialApp.router(
        title: title,
        theme: theme,
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter.config(),
      ),
    );
  }
}
