import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:forth_flutter/components/round_pop_button.dart';
import 'package:forth_flutter/theme/color_theme.dart';

class ItemFrame extends StatelessWidget {
  final Widget itemBody;

  const ItemFrame({Key key, this.itemBody}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: ColorPalette.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 80,
        elevation: 0,
        toolbarHeight: 70,
        leading: RoundPopButton(
          action: () => Navigator.pop(context),
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        backwardsCompatibility: false,
      ),
      body: itemBody,
    );
  }
}
