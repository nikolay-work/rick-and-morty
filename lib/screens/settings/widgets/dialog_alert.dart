import 'package:flutter/material.dart';
import 'package:forth_flutter/theme/color_theme.dart';
import 'package:forth_flutter/theme/text_theme.dart';

class DialogAlert extends StatelessWidget {
  const DialogAlert({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Dialog(
        backgroundColor: ColorPalette.blueBackground2,
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
                  style: TextThemes.white_20_500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Radio(
                    value: 0,
                    groupValue: 'chooseTheme',
                    onChanged: null,
                  ),
                  Text(
                    'Выключенна',
                    style: TextThemes.white_16_400,
                  ),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: 'chooseTheme',
                    onChanged: null,
                  ),
                  Text(
                    'Включенна',
                    style: TextThemes.white_16_400,
                  ),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 2,
                    groupValue: 'chooseTheme',
                    onChanged: null,
                  ),
                  Text(
                    'Следовать настройкам системы',
                    style: TextThemes.white_16_400,
                  ),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 3,
                    groupValue: 'chooseTheme',
                    onChanged: null,
                  ),
                  Text(
                    'В режиме энергосбережения',
                    style: TextThemes.white_16_400,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(right: 20, top: 2),
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: Text(
                    'ОТМЕНА',
                    style: TextThemes.white_14_500_2,
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
