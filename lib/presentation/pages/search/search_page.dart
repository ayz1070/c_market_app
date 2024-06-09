import 'package:flutter/material.dart';

import '../../../core/theme/constant/app_colors.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SearchBar(
                leading: Icon(Icons.search_outlined),
                padding: WidgetStatePropertyAll(EdgeInsets.fromLTRB(10, 0, 10, 0)),
                elevation:WidgetStateProperty.all<double?>(0.0),
                backgroundColor: WidgetStateProperty.all(AppColors.primary.withOpacity(0.5)),
                autoFocus: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
