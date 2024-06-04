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
                elevation: MaterialStateProperty.all<double?>(0.0),
                backgroundColor: MaterialStateProperty.all(
                  AppColors.primary.withOpacity(0.5),
                ),
                padding: MaterialStatePropertyAll(
                  const EdgeInsets.symmetric(horizontal: 10),
                ),
                autoFocus: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
