
import 'package:fl_components/screens/animated_screen.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes{

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
   // MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(),icon: Icons.home_max_outlined),
    MenuOption(route: 'Listview1', name: 'Jefri Ortiz', screen: const Listview1Screen(),icon: Icons.ac_unit_outlined),
    MenuOption(route: 'Listview2', name: 'Listview Tipo 2', screen: const Listview2Screen(),icon: Icons.home_max_outlined),
    MenuOption(route: 'alert', name: 'Alert - Alertas', screen: const AlertScreen(),icon: Icons.align_vertical_center_outlined),
    MenuOption(route: 'card', name: 'Card - Cartas', screen: const CardScreen(),icon: Icons.card_giftcard_outlined),
    MenuOption(route: 'Avatar', name: 'Avatar', screen: const AvatarScreen(),icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'Animated', name: 'Animated Container', screen: const AnimatedScreen(),icon: Icons.play_arrow_outlined),
    MenuOption(route: 'Input', name: 'Text inputs', screen: const InputScreen(),icon: Icons.input_rounded),
    MenuOption(route: 'Slider', name: 'Slider && checks', screen: const SliderScreen(),icon: Icons.social_distance_sharp),
     MenuOption(route: 'Builder', name: 'InfiniteScroll & pull to refresh', screen: const ListViewBuilderScreen(),icon: Icons.build_circle_outlined),
  ];
/*
  static Map<String, Widget Function(BuildContext)> routes = {
        'home':( BuildContext context) => const HomeScreen(),
        'listview1':(BuildContext context) => const Listview1Screen(),
        'listview2':(BuildContext context) => const Listview2Screen(),
        'alert':(BuildContext context) => const AlertScreen(),
        'card':(BuildContext context) => const CardScreen(),
      };
*/
  static Route<dynamic>?onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(
            builder: (context) => const Listview1Screen());

  
  }

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext context)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});  

    for (final option in menuOptions){
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
}