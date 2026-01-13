import 'package:flutter/material.dart';

class AuthTabBarWidget extends StatelessWidget {
  const AuthTabBarWidget({super.key, required this.tabController});
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      dividerColor: Colors.transparent,
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      controller: tabController,
      tabs: const [
        Tab(text: "Login"),
        Tab(text: "Sign-Up"),
      ],
    );
  }
}
