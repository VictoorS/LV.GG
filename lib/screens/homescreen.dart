import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lv_gg/screens/strings.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BottomAppBar(
                shape: const AutomaticNotchedShape(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
                // Couleur BottomAppbar
                color: Colors.black,
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      //Ajout texte + icon
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        direction: Axis.vertical,
                        children: [
                          IconButton(
                            onPressed: () => Navigator.pushNamed(
                                context, "/routeStatistique"),
                            iconSize: 27.0,
                            icon: const Icon(
                              Icons.event,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            "Statistiques",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        direction: Axis.vertical,
                        children: [
                          IconButton(
                            onPressed: () =>
                                Navigator.pushNamed(context, "/routeChampion"),
                            iconSize: 27.0,
                            icon: const Icon(
                              Icons.menu_open,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            ("Liste Champion"),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        direction: Axis.vertical,
                        children: [
                          IconButton(
                            onPressed: () => {
                              Navigator.pushNamed(context, '/routeClassement')
                            },
                            iconSize: 27.0,
                            icon: const Icon(
                              Icons.star_half,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            ("Classement"),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
