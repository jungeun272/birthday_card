import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( // 앱바 추가
          title: Text('Happy Birthday Card'), // 앱바 제목 설정
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40 ),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x2E000000),
                                  blurRadius: 23,
                                  offset: Offset(0, 11),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Happy Birthday\nJungeun!',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF4A4A4A),
                                        fontSize: 20,
                                        fontFamily: 'Avenir Next',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                    SizedBox(height: 40),
                                    Text(
                                      '🥳',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF4A4A4A),
                                        fontSize: 104,
                                        fontFamily: 'Avenir Next',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                    SizedBox(height: 16),
                                    SizedBox(
                                      width: 262,
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF4A4A4A),
                                          fontSize: 14,
                                          fontFamily: 'Avenir Next',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24), // 위젯 사이에 간격 추가
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 122, vertical: 15),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF1B69FD),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27.50),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x631B69FD),
                            blurRadius: 12,
                            offset: Offset(0, 6),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Send',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Avenir Next',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              bottom: 180,
              child: Lottie.network(
                'https://lottie.host/48dff771-01ad-4e92-abbc-c05f611327b8/vaN9Ls8vMg.json',
                width: 200, // 원하는 가로 크기 지정
                height: 200, // 원하는 세로 크기 지정
              ),
            ),
          ],
        ),
      ),
    );
  }
}
