import 'package:flutter/material.dart';

class SideToggleButton extends StatelessWidget {
  final bool isExpanded;
  final VoidCallback onToggle;

  const SideToggleButton({
    required this.isExpanded,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24, // تحديد عرض الدائرة
      height: 24, // تحديد ارتفاع الدائرة
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface, // لون الخلفية من الـ surface
        shape: BoxShape.circle, // شكل مدور
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // لون الظل
            blurRadius: 4, // شدة الظل
            offset: Offset(2, 2), // اتجاه الظل
          ),
        ],
      ),
      child: Center( // توسيط الأيقونة داخل الدائرة
        child: IconButton(
          padding: EdgeInsets.zero, // إزالة الحشو الزائد حول الأيقونة
          iconSize: 16, // تحديد حجم الأيقونة
          icon: Icon(
            isExpanded ? Icons.chevron_left : Icons.chevron_right,
            color: Theme.of(context).colorScheme.onSurface, // لون الأيقونة من الـ onSurface
          ),
          onPressed: onToggle,
        ),
      ),
    );
  }
}