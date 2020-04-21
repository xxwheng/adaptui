### 自适应UI布局工具

#### 默认使用宽750的UI图布局

---

#### 使用方式:

依赖包

pubspec.yaml文件

dependencies:

	adaptui: 
		git: https://github.com/xxwheng/adaptui.git

导入包

	import 'package:adaptui/adaptui.dart';




----------


#### 实际尺寸 = UI尺寸 * 设备宽度/设计图宽度 ###
m = AdaptUI.rpx(n) 

#### 像素尺寸 = UI尺寸 / 设备像素比 ###
m = AdaptUI.px(n) 

