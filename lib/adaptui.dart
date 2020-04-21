library adaptui;

import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 自适应UI布局工具
/// 默认使用宽750的UI图布局
/// m = AdaptUI.rpx(n) ### 实际尺寸 = UI尺寸 * 设备宽度/设计图宽度 ###
/// m = AdaptUI.px(n)  ### 像素尺寸 = UI尺寸 / 设备像素比 ###
class AdaptUI {
  
  static MediaQueryData _mediaQueryData = MediaQueryData.fromWindow(window);
  static double _screenWidth = _mediaQueryData.size.width;
  static double _screenHeight = _mediaQueryData.size.height;
  static double _safeAreaTop = _mediaQueryData.padding.top;
  static double _safeAreaBot = _mediaQueryData.padding.bottom;
  static double _pixelRatio = _mediaQueryData.devicePixelRatio;
  static var _ratio;

  /// 初始化ui宽度，获取比例
  static init(int number) {
    int uiwidth = number is int ? number : 750;
    _ratio = _screenWidth / uiwidth;
  }

  /// 适应宽度
  /// 默认屏幕宽750
  static rpx(number) {
    if ((_ratio is double || _ratio is int)) {
      AdaptUI.init(750);
    }
    return _ratio * number;
  }

  /// 返回number像素长度， 默认1px
  static px({number=1}) {
    return number / _pixelRatio;
  }

  /// 返回屏幕宽度
  static screenWidth() { return _screenWidth; }

  /// 返回屏幕高度
  static screenHeight() { return _screenHeight; }

  /// 返回顶部安全域高度
  static safeATop() { return _safeAreaTop; }

  /// 返回底部安全域高度
  static safeABot() { return _safeAreaBot; }
}
