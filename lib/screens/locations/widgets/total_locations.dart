import 'package:flutter/material.dart';
import 'package:forth_flutter/theme/text_theme.dart';

class TotalLocations extends StatelessWidget {
  final String count;

  const TotalLocations({Key key, this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 30,
      alignment: Alignment.topLeft,
      child: Text(
        'ВСЕГО ЛОКАЦИЙ: ' + count,
        style: Theme.of(context).textTheme.overline,
      ),
    );
  }
}
