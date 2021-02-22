import 'dart:async';

// import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:tknp/theme/theme.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Downloads extends StatefulWidget {
  @override
  _DownloadsState createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
  Completer<WebViewController> _controller = Completer<WebViewController>();
  // DataConnectionChecker connectionChecker = DataConnectionChecker();

  @override
  Widget build(BuildContext context) {
    // ScreenUtil.init(context, height: height, width: width);
    return Scaffold(
      appBar: AppBar(
        // shape: kAppBarShape,
        title: Text('TKNP Downloads'),
        actions: <Widget>[
          NavigationControls(_controller.future),
        ],
      ),
      body: ListView(children: [
        Offstage(
          // offstage: connectionChecker.hasConnection != null,
          child: Card(
            child: Container(
              // width: ScreenUtil.screenWidth,
              height: 25,
              child: Center(child: Text('Will load with internet Connection')),
            ),
          ),
        ),
        Card(
          child: Container(
            // height: height,
            // width: width,
            child: SafeArea(
              child: WebView(
                initialUrl: "https://kisumupoly.ac.ke/student-downloads",
                gestureRecognizers: Set(),
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (WebViewController controller) {
                  _controller.complete(controller);
                },
                javascriptChannels: <JavascriptChannel>[
                  _toasterJavascriptChannel(context),
                ].toSet(),
                navigationDelegate: (NavigationRequest request) {
                  print('allowing navigation to $request');
                  return NavigationDecision.navigate;
                },
                onPageFinished: (String url) {
                  print('Page finished loading: $url');
                },
              ),
            ),
          ),
        ),
      ]),
    );
  }

  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
        name: 'Toaster',
        onMessageReceived: (JavascriptMessage message) {
          Scaffold.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        });
  }
}

class NavigationControls extends StatelessWidget {
  final Future<WebViewController> _webViewControllerFuture;

  const NavigationControls(this._webViewControllerFuture)
      : assert(_webViewControllerFuture != null);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WebViewController>(
      future: _webViewControllerFuture,
      builder:
          (BuildContext context, AsyncSnapshot<WebViewController> snapshot) {
        final bool webViewReady =
            snapshot.connectionState == ConnectionState.done;
        final WebViewController controller = snapshot.data!;
        return Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: !webViewReady
                  ? null
                  : () async {
                      if (await controller.canGoBack()) {
                        controller.goBack();
                      } else {
                        Scaffold.of(context).showSnackBar(
                          const SnackBar(content: Text("This Last Page")),
                        );
                        return;
                      }
                    },
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              onPressed: !webViewReady
                  ? null
                  : () async {
                      if (await controller.canGoForward()) {
                        controller.goForward();
                      } else {
                        Scaffold.of(context).showSnackBar(
                          const SnackBar(content: Text("This is Last page")),
                        );
                        return;
                      }
                    },
            ),
            IconButton(
              icon: const Icon(Icons.replay),
              onPressed: !webViewReady ? null : () => controller.reload(),
            ),
          ],
        );
      },
    );
  }
}
