import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/cubit/app_cubit.dart';
import 'package:portfolio/widgets/content_about_me.dart';
import 'package:portfolio/widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          // backgroundColor: Colors.teal,
          // backgroundColor: const Color(0xFF0E0C38),
          appBar: PreferredSize(
            preferredSize: Size(
              screenSize.width,
              70,
            ),
            child: CustomAppBar(),
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF443f3f), Color(0xFF64b3f4)]),
            ),
            child: cubit.screens[cubit.currentIndex],
          ),
        );
      },
    );
  }
}
