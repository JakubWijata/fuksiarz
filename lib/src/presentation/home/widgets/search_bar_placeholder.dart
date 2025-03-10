import 'package:flutter/material.dart';
import 'package:fuksiarz/src/presentation/common/search_bar.dart' as sb;

class SearchBarPlaceholder extends StatelessWidget {
  const SearchBarPlaceholder({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(5),
      child: sb.SearchBar(
        enabled: false,
      ),
    );
  }
}
