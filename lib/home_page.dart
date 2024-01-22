import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController controller = PageController(initialPage: 0);
  int index = 0;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        onPageChanged: (number){
          index = number;
          print(number);
        },
        children: <Widget> [
          Container(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 133,),
                SizedBox(
                    width: double.infinity,
                    height: 316,
                    child: ClipRRect(
                      child: Image.asset('assets/slide_1.png'),
                    )
                ),
                SizedBox(height: 63,),
                SizedBox(
                  width: 297,
                  height: 120,
                  child: Column(
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Quick Delivery At Your Doorstep',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF0560FA),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Enjoy quick pick-up and delivery to your destination',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16),),
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 100,
                          height: 50,
                          child: OutlinedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.69),
                                  )
                              ),
                              side: MaterialStateProperty.all(
                                  BorderSide(
                                    color: Color(0xFF0560FA),
                                    width: 2.0,
                                    style: BorderStyle.solid,)),
                            ),
                            onPressed: () {
                              setState(() {
                                controller.jumpToPage(2);
                                index = 2;
                              });
                            },
                            child: Text(
                              'Skip',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF0560FA),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                      ),
                      SizedBox(width: 118),
                      SizedBox(
                          width: 100,
                          height: 50,
                          child: OutlinedButton(
                            onPressed: (){setState(() {
                              controller.jumpToPage(index + 1);

                            });},
                            child: Text(
                              'Next',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                              ),),
                            style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFF0560FA),),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.69),
                                )
                            ),
                          ),
                        ),
                      )
                    ]),

              ],
            ),
          ),
          Container(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 133,),
                SizedBox(
                    width: double.infinity,
                    height: 316,
                    child: ClipRRect(
                      child: Image.asset('assets/slide_2.png'),
                    )
                ),
                SizedBox(height: 63,),
                SizedBox(
                  width: 297,
                  height: 120,
                  child: Column(
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Flexible Payment',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF0560FA),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Different modes of payment either before and after delivery without stress',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16),),
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 50,
                        child: OutlinedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.69),
                                )
                            ),
                            side: MaterialStateProperty.all(
                                BorderSide(
                                  color: Color(0xFF0560FA),
                                  width: 2.0,
                                  style: BorderStyle.solid,)),
                          ),
                          onPressed: () {
                            setState(() {
                              controller.jumpToPage(2);
                              index = 2;
                            });
                          },
                          child: Text(
                            'Skip',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFF0560FA),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 118),
                      SizedBox(
                        width: 100,
                        height: 50,
                        child: OutlinedButton(
                          onPressed: (){setState(() {
                             controller.jumpToPage(index + 1);
                             print(index + 1);

                          });},
                          child: Text(
                            'Next',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                            ),),
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFF0560FA),),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.69),
                                )
                            ),
                          ),
                        ),
                      )
                    ]),
              ],
            ),
          ),
          Container(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 133,),
                SizedBox(
                    width: double.infinity,
                    height: 316,
                    child: ClipRRect(
                      child: Image.asset('assets/slide_3.png'),
                    )
                ),
                SizedBox(height: 63,),
                SizedBox(
                  width: 297,
                  height: 120,
                  child: Column(
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Real-time Tracking',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF0560FA),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Track your packages/items from the comfort of your home till final destination',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16),),
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 342,
                        height: 46,
                        child: OutlinedButton(
                          onPressed: (){setState(() {
                            controller.jumpToPage(index + 1);
                          });},
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                            ),),
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFF0560FA),),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                )
                            ),
                          ),
                        ),
                      )
                    ]),
              ],
            ),
          ),
          Container()
        ],
      ),
    );
  }
}