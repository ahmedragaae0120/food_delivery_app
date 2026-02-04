import 'package:flutter/material.dart';

class CategoriesTabBarWidget extends StatefulWidget {
  const CategoriesTabBarWidget({super.key});

  @override
  State<CategoriesTabBarWidget> createState() => _CategoriesTabBarWidgetState();
}

class _CategoriesTabBarWidgetState extends State<CategoriesTabBarWidget>
    with SingleTickerProviderStateMixin {
  final List<Tab> _categroriesList = const [
    Tab(text: 'Combos'),
    Tab(text: 'Sliders'),
    Tab(text: 'Classics'),
    Tab(text: 'Drinks'),
  ];
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: _categroriesList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: _categroriesList,
      dividerColor: Colors.transparent,
      isScrollable: true,
      controller: controller,
      unselectedLabelColor: Colors.grey,
      labelStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
      unselectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
    );
  }
}
