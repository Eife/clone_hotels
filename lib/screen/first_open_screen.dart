import 'package:clone_hotels/screen/register_main_screen.dart';
import 'package:clone_hotels/widgets/images.dart';
import 'package:clone_hotels/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class FirstOpenScreen extends StatefulWidget {
  const FirstOpenScreen({super.key});

  @override
  State<FirstOpenScreen> createState() => _FirstOpenScreenState();
}

class _FirstOpenScreenState extends State<FirstOpenScreen> {
  int _currentIndex = 1;
  PageController pageController = PageController(viewportFraction: 0.7);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:
            BoxDecoration(color: const Color.fromARGB(255, 247, 246, 246)),
        width: MediaQuery.of(context).size.width,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Unlock more benefits with\n One Key",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              30.height,
              Text(
                "Earn rewards across our family of \n brands with One Key",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              24.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  smallIcons(),
                  Text("Expedia"),
                  10.width,
                  smallIcons(),
                  Text("Hotels"),
                  10.width,
                  smallIcons(),
                  Text("Vrbo"),
                ],
              ),
              30.height,
              SizedBox(
                height: 280,
                child: PageView.builder(
                  itemCount: 3,
                  controller: pageController,
                  reverse: false,
                  physics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image(
                            image: AssetImage(imagesToFOS[index]),
                            fit: BoxFit.cover,
                          )),
                    );
                  },
                ),
              ),
              10.height,
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Learn more about One Key",
                    style: TextStyle(color: Colors.blue),
                  )),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, "/main_screen");
                          },
                          child: Text("Get started"))),
                ],
              ).paddingAll(20),
            ]),
      ),
    );
  }
}
