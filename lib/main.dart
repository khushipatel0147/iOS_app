import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:ios_app/appstore/provider/provider.dart';
import 'package:ios_app/appstore/view/mainScreen.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => IOSprovider(),)
        ],
        builder: (context, child) {
          return CupertinoApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            routes: {
              '/': (p0) => DASHScreen()
            },
          );
        },
      );
    },
  ));
}