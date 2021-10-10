import 'package:flutter/material.dart';
import 'package:nft2_marketplace_app/ui/components/explore_popular_component.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  int _tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              CircleAvatar(radius: 20),
              SizedBox(width: 12),
              Expanded(
                child: Center(
                  child: Text(
                    'Live Auction 🔥',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_outlined),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 48,
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _tabIndex = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Popular',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: _tabIndex == 0 ? Colors.black : Colors.grey,
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          height: 2,
                          width: 16,
                          decoration: BoxDecoration(
                            color: _tabIndex == 0
                                ? Colors.black
                                : Colors.transparent,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _tabIndex = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'On sale',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: _tabIndex == 1 ? Colors.black : Colors.grey,
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          height: 2,
                          width: 16,
                          decoration: BoxDecoration(
                            color: _tabIndex == 1
                                ? Colors.black
                                : Colors.transparent,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _tabIndex = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Best sale',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: _tabIndex == 2 ? Colors.black : Colors.grey,
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          height: 2,
                          width: 16,
                          decoration: BoxDecoration(
                            color: _tabIndex == 2
                                ? Colors.black
                                : Colors.transparent,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _tabIndex = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Newest',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: _tabIndex == 3 ? Colors.black : Colors.grey,
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          height: 2,
                          width: 16,
                          decoration: BoxDecoration(
                            color: _tabIndex == 3
                                ? Colors.black
                                : Colors.transparent,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: IndexedStack(
            index: _tabIndex,
            children: [
              ExplorePopularComponent(),
              Container(
                color: Colors.green,
                child: Center(
                  child: Text('On sale'),
                ),
              ),
              Container(
                color: Colors.red,
                child: Center(
                  child: Text('Best sale'),
                ),
              ),
              Container(
                color: Colors.orange,
                child: Center(
                  child: Text('Newest'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
