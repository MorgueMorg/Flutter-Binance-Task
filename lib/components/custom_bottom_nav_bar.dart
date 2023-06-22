import 'package:binance_clone/components/constants.dart';
import 'package:binance_clone/components/menu_enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.selectedMenu,
  });

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, -15),
              blurRadius: 20,
              color: const Color(0xFFDADADA).withOpacity(0.15)),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                context.go('/markets');
              },
              icon: SvgPicture.asset("assets/icons/chart.svg",
                  // ignore: deprecated_member_use
                  color: MenuState.markets == selectedMenu
                      ? secondaryDarkColor
                      : inActiveIconColor),
            ),
            IconButton(
              onPressed: () {
                context.go('/trade');
              },
              icon: SvgPicture.asset("assets/icons/trade.svg",
                  // ignore: deprecated_member_use
                  color: MenuState.trade == selectedMenu
                      ? secondaryDarkColor
                      : inActiveIconColor),
            ),
            IconButton(
              onPressed: () {
                context.go('/wallets');
              },
              icon: SvgPicture.asset("assets/icons/wallets.svg",
                  // ignore: deprecated_member_use
                  color: MenuState.wallets == selectedMenu
                      ? secondaryDarkColor
                      : inActiveIconColor),
            ),
          ],
        ),
      ),
    );
  }
}
