import 'package:flutter/material.dart';

class MeditateScreen extends StatefulWidget {
  const MeditateScreen({Key? key}) : super(key: key);

  @override
  State<MeditateScreen> createState() => _MeditateScreenState();
}

class Podcast {
  Podcast(this.name, this.playColor);

  Color playColor;
  String name;
  String date = 'December 29 Pre-Launch';
}

class _MeditateScreenState extends State<MeditateScreen> {
  List<Podcast> podcasts = [ 
    Podcast('Sweet Memories', Colors.blue),
    Podcast('A Day Dream', Colors.cyan),
    Podcast('Sweet Memories', Colors.orange),
    Podcast('Sweet Memories', Colors.red),
    Podcast('A Day Dream', Colors.green),
    Podcast('Sweet Memories', Colors.lime)
   ];

  String baseText =
      'Join the Community as we prepare over 33 days to relax and feel joy with the mind and happnies session across the World.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20)),
                    child: Image.asset('assets/standing-man.png')),
              
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Peter Mach',
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
                        ),
                      ),
        
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Mind Deep Relax',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
        
                      Text(
                        baseText,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.normal
                        ),
                      )
                    ],
                  ),
                ),
        
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.play_arrow_outlined,
                        color: Colors.white,
                      ),
                    label: const Text('Play Next Session',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300
                      ),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45)
                        )
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.cyan.shade700
                      ),
                      fixedSize: MaterialStateProperty.all<Size>(
                        const Size.fromHeight(60)
                      ),
                    )
                  ),
                ),
              ),
              
              ...podcasts.map((e) {
                return SizedBox(
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                                )
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                              e.playColor
                              ),
                              minimumSize: MaterialStateProperty.all<Size>(
                                const Size(45, 45)
                              ),
                              fixedSize: MaterialStateProperty.all<Size>(
                                const Size(45, 45)
                              ),
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.all(-5)
                              )
                            ),
                            child: const Center(
                              child: Icon(Icons.play_arrow_outlined,
                                color: Colors.white,
                              ),
                            )
                          ),
        
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(e.name,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 21
                                    ),
                                  ),
                                  
                                  Text(e.date,
                                    style: const TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15
                                    ),
                                  )
                                ],
                              ),
                            )
                          ),
        
                          IconButton(
                            onPressed: () {}, icon: 
                            const Icon(Icons.more_horiz_rounded),
                            color: Colors.black26,
                          )
                        ],
                      ),
                    ),
                  );
                })              
              ],
            ),
          ),
        )
      ),
    );
  }
}
