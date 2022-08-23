import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_course/bloc/detail_tab/detail_tab_cubit.dart';
import 'package:my_course/bloc/my_course_tab/my_course_tab_cubit.dart';
import 'package:my_course/bloc/tab/tab_cubit.dart';
import 'package:my_course/screens/detail/detail_screen.dart';
import 'package:my_course/screens/home/home_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => TabCubit()),
          BlocProvider(create: (context) => DetailTabCubit()),
          BlocProvider(create: (context) => MyCourseTabCubit()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'My Course',
          theme: ThemeData.light(),
          home: const HomeScreen(),
          routes: {DetailScreen.routeName: (ctx) => const DetailScreen()},
        ));
  }
}
