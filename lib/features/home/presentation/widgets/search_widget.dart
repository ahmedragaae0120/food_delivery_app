import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchAnchor(
      builder: (context, controller) {
        return SearchBar(
          controller: controller,
          hintText: 'Search for food',
          leading: const Icon(Icons.search),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          ),
        );
      },
      suggestionsBuilder: (context, controller) {
        return const <Widget>[
          ListTile(title: Text('Suggestion 1')),
          ListTile(title: Text('Suggestion 2')),
        ];
      },

      viewOnChanged: (value) {
        // Handle view on changed
      },
    );
  }
}
