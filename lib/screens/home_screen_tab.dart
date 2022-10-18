import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/cubit/app_cubit.dart';

class HomeScreenTab extends StatelessWidget {
  const HomeScreenTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: const Color(0xFF77abd6),
              title: const Text(
                'Mostafa portfolio',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0),
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              onTap: (index) {
                cubit.changeAppBar(index: index);
              },
              currentIndex: cubit.currentIndex,
              elevation: 5,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      FontAwesomeIcons.info,
                    ),
                    label: 'About'),
                BottomNavigationBarItem(
                    icon: Icon(
                      FontAwesomeIcons.images,
                    ),
                    label: 'Portfolio'),
                BottomNavigationBarItem(
                    icon: Icon(
                      FontAwesomeIcons.addressBook,
                    ),
                    label: 'Contact'),
              ],
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
      ),
    );
  }
}
