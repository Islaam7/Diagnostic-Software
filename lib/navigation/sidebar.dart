import 'package:flutter/material.dart';
import '../widgets/logo.dart';
import '../widgets/navigation_items.dart';
import '../widgets/sidebar_toggle_button.dart';

class SideBar extends StatefulWidget {
  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  int selectedIndex = 0;
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 9, top: 14, bottom: 14),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                height: 960,
                width: isExpanded ? 220 : 80,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50),
                    Logo(),
                    const SizedBox(height: 50),
                    NavigationItem(
                      selectedIndex: selectedIndex,
                      isExpanded: isExpanded,
                      onItemSelected: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),

            Positioned(
              top: 100,
              right: isExpanded ? 0 : 0,
              child: SideToggleButton(
                isExpanded: isExpanded,
                onToggle: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
