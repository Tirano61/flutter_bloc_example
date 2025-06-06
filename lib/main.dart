
import 'package:blocs_app/presentation/blocs/01-simple_cubit/username_cubit.dart';
import 'package:flutter/material.dart';
import 'package:blocs_app/config/config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const AppBlocProvider());
} 

class AppBlocProvider extends StatelessWidget {
  const AppBlocProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UsernameCubit>(create: (context) => UsernameCubit()),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      title: 'Flutter BLoC',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: AppTheme( isDarkmode: false ).getTheme(),
    );
  }
}
