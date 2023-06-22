import 'package:binance_clone/components/custom_bottom_nav_bar.dart';
import 'package:binance_clone/components/menu_enums.dart';
import 'package:binance_clone/features/screens/markets/components/body.dart';
import 'package:flutter/material.dart';

class MarketsScreen extends StatelessWidget {
  const MarketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.markets,
      ),
    );
  }
}
