import 'package:flutter/material.dart';

class Widget1 extends StatefulWidget {
  const Widget1({Key? key}) : super(key: key);

  @override
  State<Widget1> createState() => _Widget1State();
}

class _Widget1State extends State<Widget1> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.cyan,
        width: double.infinity,
        child: SafeArea(
          child: Column(
            children:  [
              Expanded(
                flex: 2,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Image.asset('assets/medinow.png'),
                      ),
                      const Text('Meditate With Us!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400
                        ),
                      )
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45)
                        )
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white
                      ),
                      fixedSize: MaterialStateProperty.all<Size>(
                        const Size.fromHeight(50)
                      ),
                    ),
                    child: const Text('Sign in with Apple',
                    textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45)
                        )
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.cyan.shade100
                      ),
                      fixedSize: MaterialStateProperty.all<Size>(
                        const Size.fromHeight(50)
                      ),
                    ),
                    child: const Text('Continue with Email or Phone',
                    textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ),
              ),

              TextButton(
                onPressed: () {},
                child: const Text('Continue With Google',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal
                  ),
                ),
              ),
        
              Expanded(
                flex: 3,
                child: Image.asset('assets/meditation.png')
              )
            ],
          ),
        ),
      )
    );
  }
}