import 'package:flutter/material.dart';
import 'package:practice_1/arc.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String description = 'The Secrets of Atlantis podcast is designed for all fantasy enthusiasts, everything from debunking underwat... see more';

  CircleAvatar avatar(double radius, {Color backgroundColor = Colors.orange, double borderWidth = 1, Color borderColor = Colors.black, String? text}) {
    var child = text == null 
      ? const Icon(Icons.account_circle, color: Colors.white)
      : Text(text, style: const TextStyle(color: Colors.white, fontFamily: 'MontSerrat', fontWeight: FontWeight.w500));
    return CircleAvatar(radius: radius, backgroundColor: backgroundColor, foregroundColor: borderColor, child: child);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
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
          
                      const Positioned(
                        bottom: -10, 
                        child: Arc(width: 400, height: 110)
                      ),
                
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
                        Colors.orange
                      ),
                      overlayColor: MaterialStateProperty.all<Color>(
                        Colors.orange.shade50
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
                  ),
          
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: double.infinity,
                      height: 300,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.deepPurple.shade600
                      ),
          
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
          
                                avatar(30),
          
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 7),
                                  child: Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      const Text('Codin',
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                          fontSize: 22
                                        )
                                      ),
                                      
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: TextButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all<OutlinedBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(5)
                                              )
                                            ),
                                            minimumSize: MaterialStateProperty.all<Size>(
                                              const Size(50, 20)
                                            ),
                                            padding: MaterialStateProperty.all<EdgeInsets>(
                                              const EdgeInsets.symmetric(vertical: -2, horizontal: -5)
                                            ),
                                            backgroundColor: MaterialStateProperty.all<Color>(
                                              Colors.black45
                                            ),
                                            overlayColor: MaterialStateProperty.all<Color>(
                                              Colors.grey
                                            ),
                                            foregroundColor: MaterialStateProperty.all<Color>(
                                              Colors.white
                                            ),
                                            textStyle: MaterialStateProperty.all<TextStyle>(
                                              const TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16
                                              )
                                            )
                                          ),
                                          child: const Text('Host')
                                        ),
                                      ),
                                    ]
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical:0),
                                    child: Text(description,
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14
                                      ),
                                    )
                                  ),
                                )
                              ],
                            ),
                          ),
          
                          const Spacer(),
                          
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    minimumSize: MaterialStateProperty.all<Size>(
                                      const Size(80, 25)
                                    ),
                                    backgroundColor: MaterialStateProperty.all<Color>(
                                      Colors.black45
                                    ),
                                    overlayColor: MaterialStateProperty.all<Color>(
                                      Colors.grey
                                    ),
                                    foregroundColor: MaterialStateProperty.all<Color>(
                                      Colors.white
                                    ),
                                    padding: MaterialStateProperty.all<EdgeInsets>(
                                      const EdgeInsets.symmetric(horizontal: 2)
                                    )
                                  ),
                                  child: Row(
                                    children: const [
                                      Text('4.8'),
                                      Icon(Icons.star_border_rounded),
                                      Padding(
                                        padding: EdgeInsets.all(2),
                                        child: Text('(10)', style: TextStyle(color: Colors.grey)),
                                      )
                                    ],
                                  )
                                ),
          
                                const Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                                  child: Text('.',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
          
                                TextButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    minimumSize: MaterialStateProperty.all<Size>(
                                      const Size(80, 25)
                                    ),
                                    backgroundColor: MaterialStateProperty.all<Color>(
                                      Colors.black45
                                    ),
                                    overlayColor: MaterialStateProperty.all<Color>(
                                      Colors.grey
                                    ),
                                    foregroundColor: MaterialStateProperty.all<Color>(
                                      Colors.white
                                    ),
                                    padding: MaterialStateProperty.all<EdgeInsets>(
                                      const EdgeInsets.symmetric(horizontal: 2, vertical: 0)
                                    )
                                  ),
                                  child: const Text('Fantasy')
                                ),

                                const Spacer(),
                                IconButton(
                                  onPressed: () => true, 
                                  iconSize: 35,
                                  color: Colors.white,
                                  icon: const Icon(Icons.notifications_none_rounded)
                                )
                              ],
                            ),
                          ),
                          
                          Container(
                            color: Colors.deepPurple.shade900,
                            child: SizedBox.fromSize(
                              size: const Size.fromHeight(80),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                                child: Row(
                                  children: [
                                    Stack(
                                      children: [
                                        avatar(25, backgroundColor: Colors.blue),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 25),
                                          child: avatar(25, backgroundColor: Colors.red),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 50),
                                          child: avatar(25, backgroundColor: Colors.green),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 75),
                                          child: avatar(25, backgroundColor: Colors.pink),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 100),
                                          child: avatar(25, text: '+10'),
                                        )
                                      ],
                                    ),
                                        
                                    const Spacer(),
                                    Icon(Icons.cell_tower, color: Colors.orange.shade600),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Text('Live',
                                        style: TextStyle(
                                          color: Colors.orange.shade600,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              )
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.yellow.shade600,
                        borderRadius: BorderRadius.circular(75)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Image.asset('assets/figures.png'),
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text('Invite your friends to join',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,

                                  ),
                                ),
                              ),
                            ),
                            
                            IconButton(
                              onPressed: () {}, 
                              color: Colors.black87,
                              icon: const Icon(Icons.share)
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}