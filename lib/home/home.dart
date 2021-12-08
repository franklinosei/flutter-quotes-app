import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            'https://picsum.photos/id/10/500/500',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            color: Colors.black.withOpacity(0.75),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                // color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.4,
              child: Center(
                child: DefaultTextStyle(
                  style: GoogleFonts.nunito(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                  child: DefaultTextStyle(
                    style: GoogleFonts.badScript(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        FadeAnimatedText('👉do IT!'),
                        FadeAnimatedText('👉do it RIGHT!!'),
                        FadeAnimatedText('👉do it RIGHT NOW!!!'),
                      ],
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),

                  // AnimatedTextKit(
                  //   repeatForever: true,
                  //   isRepeatingAnimation: true,
                  //   animatedTexts: [
                  //     TypewriterAnimatedText(
                  //       'Discipline is the best tool',
                  //       curve: Curves.bounceOut,
                  //     ),
                  //     TypewriterAnimatedText(
                  //       'Design first, then code',
                  //     ),
                  //     TypewriterAnimatedText(
                  //       'Do not patch bugs out, rewrite them',
                  //     ),
                  //     TypewriterAnimatedText(
                  //       'Do not test bugs out, design them out',
                  //     ),
                  //   ],
                  //   onTap: () {
                  //     print("Tap Event");
                  //   },
                  // ),
                ),
              ),
            ),
          ),
          Positioned(
            child: Text(
              '@iamdveloper',
              style: GoogleFonts.allan(color: Colors.white, fontSize: 25),
            ),
            bottom: 50,
            left: 260,
          ),
        ],
      ),
    );
  }
}
