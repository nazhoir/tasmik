import 'package:flutter/foundation.dart';

class LTRSize with ChangeNotifier {
  static double ltrFont = 10;
  static double rtlFont = 20;

  set ltrFontSize(newValue) {
    ltrFont = newValue;
    notifyListeners();
  }

  set rtlFontSize(newValue) {
    rtlFont = newValue;
    notifyListeners();
  }

  double get ltrFontSize => ltrFont * 1;
  double get sliderltrFontSize => ltrFont;

  double get rtlFontSize => rtlFont * 1;
  double get sliderrtlFontSize => rtlFont;
}
