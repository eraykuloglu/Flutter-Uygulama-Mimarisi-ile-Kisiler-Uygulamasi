import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi/ui/views/anasayfa.dart';
import 'package:kisiler_uygulamasi/ui/views/cubit/anasayfa_cubit.dart';
import 'package:kisiler_uygulamasi/ui/views/cubit/detaysayfa_cubit.dart';
import 'package:kisiler_uygulamasi/ui/views/cubit/kayitsayfa_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>KayitSayfaCubit()),
        BlocProvider(create: (context)=>DetaySayfaCubit()),
        BlocProvider(create: (context)=>AnasayfaCubit()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
          theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Anasayfa(),
      ),
    );
  }
}

