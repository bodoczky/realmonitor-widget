import 'package:flutter/material.dart';

@immutable
class FiltersWidgetV2Theme extends ThemeExtension<FiltersWidgetV2Theme> {
  const FiltersWidgetV2Theme({
    this.headerTextColor,
    this.bodyTextColor,
    this.dataRowTitleTextStyle,
    this.dataRowValueTextStyle,
  });

  final Color? headerTextColor;
  final Color? bodyTextColor;
  final TextStyle? dataRowTitleTextStyle;
  final TextStyle? dataRowValueTextStyle;

  @override
  FiltersWidgetV2Theme copyWith({
    Color? headerTextcolor,
    Color? bodyTextColor,
    TextStyle? dataRowTitleTextStyle,
    TextStyle? dataRowValueTextStyle,
  }) {
    return FiltersWidgetV2Theme(
      headerTextColor: headerTextcolor ?? headerTextColor,
      bodyTextColor: bodyTextColor ?? bodyTextColor,
      dataRowTitleTextStyle: dataRowTitleTextStyle ?? dataRowTitleTextStyle,
      dataRowValueTextStyle: dataRowValueTextStyle ?? dataRowValueTextStyle,
    );
  }

  @override
  FiltersWidgetV2Theme lerp(
      ThemeExtension<FiltersWidgetV2Theme>? other, double t) {
    if (other is! FiltersWidgetV2Theme) {
      return this;
    }
    return FiltersWidgetV2Theme(
      headerTextColor: Color.lerp(headerTextColor, other.headerTextColor, t),
      bodyTextColor: Color.lerp(bodyTextColor, other.bodyTextColor, t),
      dataRowTitleTextStyle:
          TextStyle.lerp(dataRowTitleTextStyle, other.dataRowTitleTextStyle, t),
      dataRowValueTextStyle:
          TextStyle.lerp(dataRowValueTextStyle, other.dataRowValueTextStyle, t),
    );
  }

  @override
  String toString() =>
      'FiltersWidgetV2Colors(headerTextColor: $headerTextColor, bodyTextColor: $bodyTextColor)';
}
