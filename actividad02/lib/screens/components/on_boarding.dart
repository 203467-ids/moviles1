import 'package:flutter/material.dart';
import 'ContentBoarding.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentIndex = 0;
  late PageController _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    // TODO: implement initState
    super.initState();
  }

  void gotoPage() {
    print("Thankyou");
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Align(
          alignment: Alignment.center,
          child: SafeArea(
            left: true,
            top: true,
            right: true,
            bottom: true,
            minimum: EdgeInsets.all(16.0),
            child: Padding(
              padding: EdgeInsets.all(10.0),
            ),
          ),
        ),
        Expanded(
            child: PageView.builder(
          controller: _controller,
          itemCount: contents.length,
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemBuilder: (_, i) {
            return Padding(
              padding: const EdgeInsets.only(top: 90, left: 60, right: 60),
              child: Column(
                children: [
                  Image.asset(
                    contents[i].image,
                    height: 300,
                  )
                ],
              ),
            );
          },
        )),
        Container(
          height: 410.0,
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(50)),
              color: Color.fromARGB(255, 250, 248, 249)),
          // ignore: unnecessary_new
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 20, right: 20, bottom: 20),
                  child: Column(
                    children: [
                      Text(
                        contents[currentIndex].tittle,
                        textAlign: TextAlign.center,
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 67, 3, 80)),
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        contents[currentIndex].text,
                        textAlign: TextAlign.center,
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            fontSize: 20,
                            color: const Color.fromARGB(255, 75, 67, 67)),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          contents.length,
                          (index) => buildDot(index, context),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  alignment: Alignment.center,
                  child: SafeArea(
                    left: true,
                    top: true,
                    right: true,
                    bottom: true,
                    child: Column(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: currentIndex == contents.length - 1
                                ? Color.fromARGB(255, 8, 231, 75)
                                : Color.fromARGB(255, 253, 255, 254),
                            onPrimary: Color.fromARGB(255, 67, 3, 80),
                            shadowColor: Colors.greenAccent,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                            side: const BorderSide(
                                color: Color.fromARGB(255, 67, 3, 80)),
                            minimumSize: const Size(360, 50), //////// HERE
                          ),
                          onPressed: () {},
                          // ignore: prefer_const_constructors
                          child: Text('Siguiente',
                              // ignore: prefer_const_constructors
                              style: TextStyle(fontSize: 18)),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 5,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 245, 9, 9)),
    );
  }
}
