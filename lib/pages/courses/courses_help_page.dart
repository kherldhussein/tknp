import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:tknp/util/download_utils.dart';

class CoursesHelpPage extends StatefulWidget {
   final String title;
  const CoursesHelpPage({Key? key,required this.title}) : super(key: key);
  @override
  State<CoursesHelpPage> createState() => _CoursesHelpPageState();
}

class _CoursesHelpPageState extends State<CoursesHelpPage>  with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }
  final appForm =
      'https://kisumupoly.ac.ke/student-downloads/TKNP-APPLICATION-FORM-1.pdf';
  final medForm =
      'https://kisumupoly.ac.ke/student-downloads/Kisumu-National-Polytechnic-Medical-Report-Form.pdf';
  final rulForm =
      'https://kisumupoly.ac.ke/student-downloads/Kisumu-National-Polytechnic-Rules-Regulations-Declaration-Form.pdf';

  @override
  Widget build(BuildContext context) {
    var downloader = Provider.of<DownloadUtil>(context, listen: false);
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), elevation: 0),
      body: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 5,
            )
          ],
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
          children: <Widget>[
            Card(
              child: ExpansionTile(
                title: Text('Read Courses Guide'),
                tilePadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                childrenPadding:
                EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                children: [
                  Text(
                    'Click on your favourite department in the category. A new page will pop up '
                        'showing the programmes(courses) details as offered on each department.'
                        '\n',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    'The page has cards showing courses offered per department. '
                        'Each card has three packed columns showing course title, '
                        'the minimum requirement '
                        'and lastly is the admission time/duration, just below it the '
                        'exam body for the course.\n\nEnjoy!!',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Card(
              child: ExpansionTile(
                title: Text('Joining Instructions'),
                tilePadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                childrenPadding:
                EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                children: [
                  Text(
                    'After Going through the list of training programmes(courses) and selected a programme you want to join, you are required to do the following: \n',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    '1. Pay a non-refundable application fee of Kshs. 500 to KCB Kisumu Branch Account Number 1103855980 or Cooperative Bank Kisumu Branch Account Number 01129012042200.\n\n2. Download, print and fill the application form found in the downloads below.\n\n3. Download, print and fill the TKNP Medical Form found in the downloads below.\n\n4. Download, print and fill the TKNP Rules and Regulations declaration form found in the downloads below.\n\n5. Attach all the documents above together with copies of KCSE/KCPE Result slips/Certificates, National ID card and Leaving Certificates and submit to the Admissions Office during working hours.',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Card(
              child: ExpansionTile(
                title: Text('Downloads'),
                tilePadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                childrenPadding:
                EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                children: [
                  downloadWidget(downloader, 'TKNP Application form', appForm),
                  downloadWidget(downloader, 'TKNP Medical form', medForm),
                  downloadWidget(downloader,
                      'TKNP Rules and Regulations declaration form', rulForm),
                  Lottie.asset('assets/lottie/download.json',
                      onLoaded: (loaded) {
                    _controller!
                      ..duration = downloader.downloadRate.seconds
                      ..forward()
                      ..addListener(() {
                        if (_controller!.duration != null) {
                          if (_controller!.lastElapsedDuration! <
                              loaded.duration) {
                            _controller!.repeat();
                          }
                        }
                      });
                  })
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
  Widget downloadWidget(DownloadUtil downloadUtil, String title, String data) {
    return ListTile(
        title: Text('$title\n'),
        onTap: () {
          downloadUtil.downloadFile(data, title).then((value) {});
          Get.snackbar('Download Progress', 'message',
              messageText: progress(),
              duration: downloadUtil.downloadRate.seconds,
              snackPosition: SnackPosition.BOTTOM);
        });
  }
  Widget progress() {
    var downloader = Provider.of<DownloadUtil>(context, listen: true);
    return Text(downloadStatus(downloader));
  }

  downloadStatus(DownloadUtil downloadUtil) {
    var status = '';
    switch (downloadUtil.status) {
      case DownloadStatus.NotStarted:
        status = 'Click to Download';
        break;
      case DownloadStatus.Started:
        status = 'Download Started';
        break;
      case DownloadStatus.Downloading:
        status =
            'Download Progress : ' + downloadUtil.downloadRate.toString() + '%';
        break;
      case DownloadStatus.Completed:
        status = 'Download Completed';
        break;
    }
    return status;
  }
  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }
}
