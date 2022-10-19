import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/mob_screens/mob_widgets/about_screen_mob.dart';
import 'package:portfolio/mob_screens/portfolio_screen_mob.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/home_web.dart';
import 'package:portfolio/tab_screens/contact_screen.dart';
import 'package:portfolio/tab_screens/portfolio_screen.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  static AppCubit get(context) => BlocProvider.of(context);
  List<Widget> screens = [
    const Responsive(
      web: HomeWeb(),
      tablet: AboutScreenMob(),
      mobile: AboutScreenMob(),
    ),
    Responsive(
      web: PortfolioScreenWeb(),
      mobile: PortfolioScreenMob(),
      tablet: PortfolioScreenMob(),
    ),
    const ContactScreen(),
  ];

  int currentIndex = 0;

  void changeAppBar({required int index}) {
    currentIndex = index;
    emit(ChangeAppBarState());
  }

  List<Widget> sure = [
    const Image(
      image: AssetImage('assets/images/1.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/2.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/3.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/4.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/5.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/6.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/7.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/8.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/9.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/10.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/12.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/13.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/14.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/15.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/16.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/17.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
  ];

  List<Widget> booking = [
    const Image(
      image: AssetImage('assets/images/20.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/21.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/22.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/23.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/24.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/25.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/26.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/27.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/28.jpg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/29.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/30.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/31.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/32.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/33.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/34.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/35.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/36.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/37.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/38.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/39.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/40.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/41.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/42.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
    const Image(
      image: AssetImage('assets/images/43.jpeg'),
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
  ];
}
