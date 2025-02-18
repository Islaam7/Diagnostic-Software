import 'package:flutter/material.dart';

class NavigationIcon extends StatelessWidget {
  final String imagePath;
  final bool isSelected;
  final bool isExpanded;
  final String label;
  final VoidCallback onTap;

  const NavigationIcon({
    required this.imagePath,
    required this.isSelected,
    required this.isExpanded,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: isExpanded ? 23 : 0),
                  child: SizedBox(
                    width: 32,
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.onPrimary,
                        BlendMode.srcIn,
                      ),
                      child: Image.asset(
                        imagePath,
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                ),
                if (isExpanded)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        label,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
              ],
            ),
            Positioned(
              left: 0,
              top: 0,
              bottom: 0,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                width: isSelected ? 5 : 0,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}