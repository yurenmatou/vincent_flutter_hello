# vincent_hello

A new Flutter plugin project.

## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter development, view the
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



发布插件案例："https://docs.flutter.dev/packages-and-plugins/developing-packages#plugin-platforms"
1、创建一个应用插件
flutter create --org com.qidian --template=plugin --platforms=android,ios -i swift -a java flutter_hello
-a 是android 
-i 是ios

2、尝试发布
flutter packages pub publish --dry-run
这期间需要梯子，环境设置，要能访问到google.com
运行上面的命令：显示Package has 0 warnings. 则代表 没什么问题
另外需要注意的点是：
1、pubspec.yaml需要设置homepage，比如是你的github的开源项目地址
2、description进行插件功能性描述
3、已有License文件，你可以在giuhub创建一个项目,license挑选BSD3，去覆盖它

3、真正发布
flutter packages pub publish --server=https://pub.dartlang.org
3.1、根据命令提示原则y继续
3.2、提示你需要访问链接里面的网站，复制或者打开到浏览器去验证即可，没有登录谷歌账号的话需要登录
3.3、验证过程如下
Waiting for your authorization... 等待你打开浏览器去验证
Authorization received, processing... 验证进行中
Successfully authorized. 验证成功
Uploading... 上传代码当中
