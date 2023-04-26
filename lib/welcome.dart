import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:townhall_app_v1/homepage.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFDE2F3),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 30,
                  ),
                  const Text(
                    "Hi!",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ],
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Welcome to my LINK App ",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                ],
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Move to the next screen to see my profiles",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: 250,
                height: 250,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Image.asset('images/welcome.png'),
              ),
              Expanded(
                child: Container(
                  height: 50,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Homepage()),
                      );
                    },
                    child: Container(
                      height: 60,
                      child: Image.asset('images/arrows.png'),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
