// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:social_media_flutter/mtview/maintenence_screen.dart';
import 'package:social_media_flutter/widget/widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _scrollController = ScrollController();
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(28),
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      size: 27.0,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Marelan, Medan",
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(width: 24),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_none_outlined),
                      iconSize: 36,
                    ),
                  ],
                ),
              ),
              const ExSearchBart(),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.only(bottom: 16),
                margin: const EdgeInsets.only(left: 28, right: 28),
                height: 100.0,
                width: MediaQuery.of(context).size.width,
                child: Scrollbar(
                  controller: _scrollController,
                  child: ListView(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Row(
                        children: [
                          ExClipOval(
                            color: Color.fromRGBO(249, 181, 15, 100),
                            name: "Food",
                            icon: Icon(Icons.restaurant),
                          ),
                          SizedBox(width: 25),
                          ExClipOval(
                            color: Color.fromRGBO(121, 116, 237, 100),
                            name: "Bar",
                            icon: Icon(Icons.coffee_outlined),
                          ),
                          SizedBox(width: 25),
                          ExClipOval(
                            color: Color.fromRGBO(131, 209, 94, 100),
                            name: "Landmark",
                            icon: Icon(Icons.location_history),
                          ),
                          SizedBox(width: 25),
                          ExClipOval(
                            color: Color.fromRGBO(244, 143, 50, 100),
                            name: "Bike",
                            icon: Icon(Icons.directions_bike),
                          ),
                          SizedBox(width: 25),
                          ExClipOval(
                            color: Color.fromRGBO(252, 188, 179, 100),
                            name: "Shooping",
                            icon: Icon(Icons.shopping_bag),
                          ),
                          SizedBox(width: 25),
                          ExClipOval(
                            color: Colors.blue,
                            name: "Transit",
                            icon: Icon(Icons.directions_transit),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 28, right: 28),
                child: QButton(
                  label: "Start your Holiday",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MtView()),
                    );
                  },
                  prefixIcon: Icons.map_outlined,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                margin: const EdgeInsets.only(left: 28, right: 28),
                child: const Text(
                  "Popular",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Card(
                margin: const EdgeInsets.only(left: 28, right: 28),
                clipBehavior: Clip.antiAlias,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 160.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/pizza.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  "Pepperoni Pizza",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 10.0,
                                  child: Icon(
                                    Icons.fire_extinguisher,
                                    size: 10.0,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.orange,
                                  radius: 10.0,
                                  child: Icon(
                                    Icons.thumb_up,
                                    size: 10.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            const Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "256 Cal",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                                Text(
                                  "P/F/C: 12/10/31",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                                Text(
                                  "53.8 °C",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            Row(
                              children: [
                                const Text(
                                  "€9",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  width: 6.0,
                                ),
                                const Text(
                                  "€12",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.red,
                                  ),
                                ),
                                const Spacer(),
                                Transform.scale(
                                  scale: 0.8,
                                  alignment: Alignment.centerRight,
                                  child: ElevatedButton.icon(
                                    icon: const Icon(Icons.card_travel),
                                    label: const Text("Add to Cart"),
                                    style: ElevatedButton.styleFrom(),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
