import 'package:flutter/material.dart';
import '../utils/navigation_icons_list.dart';
import 'navigation_icon.dart';

class NavigationItem extends StatelessWidget {
  final int selectedIndex;
  final bool isExpanded;
  final Function(int) onItemSelected;

  const NavigationItem({
    required this.selectedIndex,
    required this.isExpanded,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(NavigationIconsList.icons.length, (i) {
        return Padding(
          padding: EdgeInsets.only(bottom: i == NavigationIconsList.icons.length - 2 ? 175 : 30),
          child: NavigationIcon(
            imagePath: NavigationIconsList.icons[i]['icon'] ?? '',
            label: NavigationIconsList.icons[i]['label'] ?? '',
            isSelected: selectedIndex == i,
            isExpanded: isExpanded,
            onTap: () => onItemSelected(i),
          ),
        );
      }),
    );
  }
}
