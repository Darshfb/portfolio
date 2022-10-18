import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/tab_screens/about_screen.dart';
import 'package:portfolio/tab_screens/contact_screen.dart';
import 'package:portfolio/tab_screens/portfolio_screen.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  static AppCubit get(context) => BlocProvider.of(context);
  List<Widget> screens = [
    AboutScreen(),
    PortfolioScreen(),
    ContactScreen(),
  ];

  int currentIndex = 0;

  void changeAppBar({required int index}) {
    currentIndex = index;
    emit(ChangeAppBarState());
  }
}
