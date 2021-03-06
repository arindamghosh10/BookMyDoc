import 'package:doctor_booking_app/src/themes/styles.dart';
import 'package:doctor_booking_app/src/utils/Colors.dart';
import 'package:doctor_booking_app/src/utils/QuadClipper.dart';
import 'package:flutter/material.dart';

class CommonWidgets {
  static Widget loadingIndicator(BuildContext context, bool isDark,
      {String title = ''}) {
    var accentColor = Theme.of(context).accentColor;
    return Center(
      child: Stack(
        children: <Widget>[
          Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(accentColor),
            ),
          ),
          Center(
              child: Padding(
            padding: EdgeInsets.only(top: 70),
            child: Text(title),
          ))
        ],
      ),
    );
  }

  static Widget unAvailableWidget(dynamic iconData, String text, bool isDark,
      Color accentColor, Color primaryColor,
      {double iconSize = 150}) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          iconData is IconData
              ? Icon(
                  iconData,
                  size: iconSize,
                  color: isDark ? accentColor : primaryColor,
                )
              : iconData,
          Padding(
            padding: EdgeInsets.only(top: 5),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 24,
              color: isDark ? accentColor : primaryColor,
            ),
            softWrap: true,
            textAlign: TextAlign.center,
          )
        ]);
  }

  /* Preference Title for commons data */
  static Widget preferenceTitle(
      String title, bool isDark, TextTheme textTheme, Color accentColor) {
    return Row(children: <Widget>[
      Text(
        title,
        style: textTheme.subtitle1.copyWith(color: accentColor),
      ),
      Padding(
        padding: EdgeInsets.only(left: 4),
      ),
      Expanded(
          child: Divider(
        color: Color.fromRGBO(181, 182, 185, isDark ? 0.4 : 0.8),
      )),
    ]);
  }

  static Widget chip(String text, Color textColor,
      {double height = 0, bool isPrimaryCard = false}) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: height),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: textColor.withAlpha(isPrimaryCard ? 200 : 50),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: isPrimaryCard ? Colors.white : textColor, fontSize: 12),
      ),
    );
  }

  static Widget decorationContainerA(Color primary, double top, double left) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: top,
          left: left,
          child: CircleAvatar(
            radius: 100,
            backgroundColor: primary.withAlpha(255),
          ),
        ),
        smallContainer(primary, 20, 40),
        Positioned(
          top: 20,
          right: -30,
          child: circularContainer(80, Colors.transparent,
              borderColor: Colors.white),
        )
      ],
    );
  }

  static Widget decorationContainerB(Color primary, double top, double left) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: -65,
          right: -65,
          child: CircleAvatar(
            radius: 70,
            backgroundColor: Colors.blue.shade100,
            child: CircleAvatar(radius: 30, backgroundColor: primary),
          ),
        ),
        Positioned(
            top: 35,
            right: -40,
            child: ClipRect(
                clipper: QuadClipper(),
                child: CircleAvatar(
                    backgroundColor: AppColors.lightseeBlue, radius: 40)))
      ],
    );
  }

  static Widget decorationContainerC(Color primary, double top, double left) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: -105,
          left: -35,
          child: CircleAvatar(
            radius: 70,
            backgroundColor: AppColors.orange.withAlpha(100),
          ),
        ),
        Positioned(
            top: 35,
            right: -40,
            child: ClipRect(
                clipper: QuadClipper(),
                child: CircleAvatar(
                    backgroundColor: AppColors.orange, radius: 40))),
        smallContainer(
          AppColors.yellow,
          35,
          70,
        )
      ],
    );
  }

  static Widget decorationContainerD(Color primary, double top, double left,
      {Color secondary, Color secondaryAccent}) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: top,
          left: left,
          child: CircleAvatar(
            radius: 100,
            backgroundColor: secondary,
          ),
        ),
        smallContainer(AppColors.yellow, 18, 35, radius: 12),
        Positioned(
          top: 130,
          left: -50,
          child: CircleAvatar(
            radius: 80,
            backgroundColor: primary,
            child: CircleAvatar(radius: 50, backgroundColor: secondaryAccent),
          ),
        ),
        Positioned(
          top: -30,
          right: -40,
          child: circularContainer(80, Colors.transparent,
              borderColor: Colors.white),
        )
      ],
    );
  }

  static Widget decorationContainerE(Color primary, double top, double left,
      {Color secondary}) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: -105,
          left: -35,
          child: CircleAvatar(
            radius: 70,
            backgroundColor: primary.withAlpha(100),
          ),
        ),
        Positioned(
            top: 40,
            right: -25,
            child: ClipRect(
                clipper: QuadClipper(),
                child: CircleAvatar(backgroundColor: primary, radius: 40))),
        Positioned(
            top: 45,
            right: -50,
            child: ClipRect(
                clipper: QuadClipper(),
                child: CircleAvatar(backgroundColor: secondary, radius: 50))),
        smallContainer(AppColors.yellow, 15, 90, radius: 5)
      ],
    );
  }

  static Widget decorationContainerF(
      Color primary, Color secondary, double top, double left) {
    return Stack(
      children: <Widget>[
        Positioned(
            top: 25,
            right: -20,
            child: RotatedBox(
              quarterTurns: 1,
              child: ClipRect(
                  clipper: QuadClipper(),
                  child: CircleAvatar(
                      backgroundColor: primary.withAlpha(100), radius: 50)),
            )),
        Positioned(
            top: 34,
            right: -8,
            child: ClipRect(
                clipper: QuadClipper(),
                child: CircleAvatar(
                    backgroundColor: secondary.withAlpha(100), radius: 40))),
        smallContainer(AppColors.yellow, 15, 90, radius: 5)
      ],
    );
  }

  static Positioned smallContainer(Color primary, double top, double left,
      {double radius = 10}) {
    return Positioned(
        top: top,
        left: left,
        child: CircleAvatar(
          radius: radius,
          backgroundColor: primary.withAlpha(255),
        ));
  }

  static Widget circularContainer(double height, Color color,
      {Color borderColor = Colors.transparent, double borderWidth = 2}) {
    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(color: borderColor, width: borderWidth),
      ),
    );
  }

  static Widget inputFormField(TextEditingController tECtrl, String labelText,
      Function validatorFunc, bool isDark,
      {IconData prefixIcon,
      TextInputType keyboardType = TextInputType.text,
      TextCapitalization textCapitalization = TextCapitalization.sentences}) {
    return Padding(
        padding: EdgeInsets.only(top: 12),
        child: TextFormField(
          controller: tECtrl,
          decoration: InputDecoration(
            labelText: labelText,
            prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: getBorderColor(isDark)),
            ),
          ),
          keyboardType: keyboardType,
          textCapitalization: textCapitalization,
          validator: validatorFunc,
        ));
  }

  static Widget textBoxFormField(TextEditingController tECtrl, String labelText,
      Function validatorFunc, bool isDark,
      {IconData prefixIcon,
      TextInputType keyboardType = TextInputType.multiline,
      TextCapitalization textCapitalization = TextCapitalization.sentences}) {
    return Padding(
        padding: EdgeInsets.only(top: 12),
        child: TextFormField(
          controller: tECtrl,
          minLines: 1,
          maxLines: 4,
          decoration: InputDecoration(
            labelText: labelText,
            prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: getBorderColor(isDark)),
            ),
          ),
          keyboardType: keyboardType,
          textCapitalization: textCapitalization,
          validator: validatorFunc,
        ));
  }

  static Color getBorderColor(bool isDark) {
    return isDark ? Colors.grey.shade600 : Colors.black54;
  }

  static Future<Null> selectDate(BuildContext context,
      TextEditingController _dateController, Function pickedValue,
      {DateTime selectedDate, bool isDark, ThemeData themeData}) async {
    final picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(1920),
        lastDate: DateTime.now(),
        builder: (BuildContext context, Widget child) {
          return Theme(
            data: isDark
                ? ThemeData.dark().copyWith(
                    colorScheme: ColorScheme.dark(
                      primary: themeData.primaryColor,
                      onPrimary: Colors.white,
                      surface: themeData.primaryColorDark,
                      onSurface: themeData.accentColor,
                    ),
                    dialogBackgroundColor: themeData.primaryColorLight,
                  )
                : ThemeData.light().copyWith(
                    colorScheme: ColorScheme.light(
                      primary: themeData.primaryColor,
                      onPrimary: Colors.white,
                      surface: themeData.primaryColorDark,
                      onSurface: Styles.nearlyBlack,
                    ),
                    dialogBackgroundColor: Styles.nearlyWhite,
                  ),
            child: child,
          );
        });
    if (picked != null) {
      pickedValue(picked);
    }
  }

// Future<Null> _selectTime(BuildContext context) async {
//   final picked = await showTimePicker(
//     context: context,
//     initialTime: selectedTime,
//   );
//   if (picked != null) {
//     setState(() {
//       selectedTime = picked;
//       _hour = selectedTime.hour.toString();
//       _minute = selectedTime.minute.toString();
//       _time = _hour + ' : ' + _minute;
//       _timeController.text = _time;
//       _timeController.text = formatDate(
//           DateTime(2019, 08, 1, selectedTime.hour, selectedTime.minute),
//           [hh, ':', nn, ' ', am]).toString();
//     });
//   }
// }

  static Widget dateInputFormField(TextEditingController tECtrl,
      String labelText, Function validatorFunc, bool isDark, Function onTapped,
      {IconData prefixIcon,
      TextInputType keyboardType = TextInputType.text,
      TextCapitalization textCapitalization = TextCapitalization.sentences}) {
    return Padding(
        padding: EdgeInsets.only(top: 12),
        child: TextFormField(
          controller: tECtrl,
          onTap: onTapped,
          focusNode: AlwaysDisabledFocusNode(),
          decoration: InputDecoration(
            labelText: labelText,
            prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: getBorderColor(isDark)),
            ),
          ),
          keyboardType: keyboardType,
          textCapitalization: textCapitalization,
          validator: validatorFunc,
        ));
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
