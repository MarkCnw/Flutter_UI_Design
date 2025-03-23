import 'package:flutter/widgets.dart';
import 'package:food_app_ui/pages/home_screen.dart';
import 'package:iconsax/iconsax.dart';

final menu = [
  {'icon': Iconsax.home5, 'description': const CoffeeAppHomeScreen()},

  {
    'icon': Iconsax.heart,
    'description': const Center(child: Text('Favorite')),
  },
  {
    'icon': Iconsax.shopping_bag,
    'description': const Center(child: Text('Shopping')),
  },
  {
    'icon': Iconsax.notification,
    'description': const Center(child: Text('Notification')),
  },
];
