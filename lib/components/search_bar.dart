import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forth_flutter/resources/icons.dart';
import 'package:forth_flutter/theme/color_theme.dart';
import 'package:forth_flutter/theme/text_theme.dart';

class SearchBar extends StatelessWidget {
  final String hintText;
  final bool showSuffixIcon;

  SearchBar({this.hintText, this.showSuffixIcon = true});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextThemes.body_1,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide.none,
        ),
        fillColor: ColorPalette.blueBackground2,
        filled: true,
        contentPadding: EdgeInsets.symmetric(vertical: 12.0),
        hintText: hintText,
        hintStyle: TextThemes.body_1,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            MainIcons.search,
            color: ColorPalette.blueText,
          ),
        ),
        suffixIcon: showSuffixIcon
            ? IntrinsicHeight(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    VerticalDivider(
                      color: ColorPalette.blueText,
                      indent: 12,
                      endIndent: 12,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        MainIcons.filter,
                        color: ColorPalette.blueText,
                      ),
                    ),
                  ],
                ),
              )
            : null,
      ),
    );
  }
}

/*
class SearchBar extends StatelessWidget {
  final String hintText;
  const SearchBar({
    Key key,
    @required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15),
      height: 48,
      margin: EdgeInsets.only(
        top: 54,
        left: 16,
        right: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(24),
        ),
        color: ColorPalette.blueBackgroundSearchBar,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: TextFormField(
              style: TextThemes.body_1,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: TextThemes.body_1,
                  icon: SvgPicture.asset(
                    MainIcons.search,
                    color: ColorPalette.blueTextSearchBar,
                  )),
            ),
          ),
          Expanded(
              flex: 0,
              child: Row(
                children: [
                  VerticalDivider(
                    color: ColorPalette.blueTextSearchBar,
                    indent: 12,
                    endIndent: 12,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      MainIcons.filter,
                      color: ColorPalette.blueTextSearchBar,
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}


 */