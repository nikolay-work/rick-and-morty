import 'package:flutter/material.dart';
import 'package:forth_flutter/theme/color_theme.dart';
import 'package:forth_flutter/theme/helpers/theme_types.dart';
import 'package:forth_flutter/theme/text_theme.dart';
import 'package:forth_flutter/theme/theme_manager.dart';
import 'package:provider/provider.dart';

class DialogAlert extends StatelessWidget {
  const DialogAlert({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeVM = Provider.of<ThemeNotifier>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Dialog(
        //backgroundColor: ColorPalette.lightBlack,
        insetPadding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 16,
        child: Container(
          height: 322,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  'Темная тема',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Radio(
                    value: ThemeType.light,
                    groupValue: themeVM.getThemeType(),
                    onChanged: (value) => themeVM.setThemeStyle(value),
                  ),
                  Text(
                    'Выключенна',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: ThemeType.dark,
                    groupValue: themeVM.getThemeType(),
                    onChanged: (value) => themeVM.setThemeStyle(value),
                  ),
                  Text(
                    'Включенна',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: ThemeType.byDevice,
                    groupValue: themeVM.getThemeType(),
                    onChanged: (value) => themeVM.setThemeStyle(value),
                  ),
                  Text(
                    'Следовать настройкам системы',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
              // Row(
              //   children: [
              //     Radio(
              //       value: 3,
              //       groupValue: themeVM.getThemeType(),
              //       onChanged: null,
              //     ),
              //     Text(
              //       'В режиме энергосбережения',
              //       style: TextThemes.white_16_400,
              //     ),
              //   ],
              // ),
              Container(
                padding: EdgeInsets.only(right: 20, top: 2),
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: Text(
                    'ОТМЕНА',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
