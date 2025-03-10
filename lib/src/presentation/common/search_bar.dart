import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fuksiarz/assets/app_icon_assets.dart';
import 'package:fuksiarz/config/app_theme_extension.dart';
import 'package:fuksiarz/l10n/l10n.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({
    super.key,
    this.enabled = true,
    this.onChange,
  });

  final bool enabled;
  final ValueSetter<String>? onChange;

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  static const iconSize = 24.0;
  late TextEditingController controller = TextEditingController();
  late FocusNode focusNode = FocusNode();

  InputBorder get inputBorder => OutlineInputBorder(
        borderSide: BorderSide(
          color: context.colors.separatorPrimary,
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            5,
          ),
        ),
      );

  bool get isBackArrowVisible =>
      focusNode.hasFocus || controller.value.text.isNotEmpty;

  bool get isClearButtonVisible => controller.value.text.isNotEmpty;

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: context.colors.onPrimary,
      enabled: widget.enabled,
      controller: controller,
      focusNode: focusNode,
      onChanged: widget.onChange,
      onTapOutside: (_) => focusNode.unfocus(),
      decoration: InputDecoration(
        enabledBorder: inputBorder,
        focusedBorder: inputBorder,
        prefixIcon: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox.square(
              dimension: iconSize,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                isBackArrowVisible
                    ? IconAssets.chevronLeft.path
                    : IconAssets.search.path,
                width: iconSize,
                height: iconSize,
              ),
            ),
          ],
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 10,
        ),
        hintText: context.l10n.search_bar_placeholder,
        hintStyle: context.textTheme.subtitleLarge.copyWith(
          color: context.colors.onPrimaryAccent,
        ),
        border: inputBorder,
      ),
    );
  }
}
