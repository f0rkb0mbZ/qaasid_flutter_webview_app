import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white54,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarDividerColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/": (_) => new WebviewScaffold(
              url: "https://qaasid.live",
              appBar: PreferredSize(
                child: AppBar(
                // title: Center(
                //   child: Text("qaasid.live"),
                // ),
                elevation: 0.0,
              ),
              preferredSize: Size.fromHeight(0.0)
              ),
              withZoom: true,
              withLocalStorage: true,
              userAgent: "Mozilla/5.0 (Linux; Android 9; ASUS_X00TD) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36",
              ignoreSSLErrors: true,
              withOverviewMode: true,
              appCacheEnabled: true,
            ),
      },
    );
  }
}