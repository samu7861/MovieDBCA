import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/login_bloc.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const String name = 'login';
  static const String path = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: BlocListener<LoginBloc, LoginState>(
            listener: (context, state) {
              
            },
            child: const SingleChildScrollView(
              
            ),
          ),
        ),
      ),
    );
  }
}
