import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practice_1/arc.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.shade100
            ),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)
                        ),
                      child: Image.asset('assets/whale.png')
                    ),

                    const Arc(width: 400, height: 110),
      
                    Positioned.directional(
                      textDirection: TextDirection.ltr,
                      bottom: 10,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.orange
                          ),
                          padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.all(-5)
                          ),
                          minimumSize: MaterialStateProperty.all<Size>(
                            const Size.square(75)
                          ),
                          fixedSize: MaterialStateProperty.all<Size>(
                            const Size.square(75)
                          ),
                          shape: MaterialStateProperty.all<CircleBorder>(
                            const CircleBorder(
                              side: BorderSide(
                                color: Colors.white,
                                width: 7
                              )
                            )
                          )
                        ), 
                        child: const Icon(
                          Icons.play_arrow_sharp, 
                          color: Colors.white,
                          size: 55,
                        ),
                      ),
                    )
                  ]
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'Secrets of Atlantis',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(color: Colors.orangeAccent, width: 1)
                      )
                    ),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 35)
                    ),
                    foregroundColor: MaterialStateProperty.all<Color>(
                      Colors.orangeAccent
                    ),
                    textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      )
                    )
                  ), 
                  child: const Text('Follow'),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
