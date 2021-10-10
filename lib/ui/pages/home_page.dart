import 'package:flutter/material.dart';
import 'package:nft2_marketplace_app/ui/pages/explore_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _pageIndex,
          children: [
            ExplorePage(),
            Container(
              color: Colors.blue,
              child: Center(
                child: Text('Search'),
              ),
            ),
            Container(
              color: Colors.red,
              child: Center(
                child: Text('Favorite'),
              ),
            ),
            Container(
              color: Colors.brown,
              child: Center(
                child: Text('Wallet'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 64,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _pageIndex = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.explore,
                          color: _pageIndex == 0 ? Colors.black : Colors.grey,
                        ),
                        Text(
                          'Explore',
                          style: TextStyle(
                            color: _pageIndex == 0 ? Colors.black : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _pageIndex = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color: _pageIndex == 1 ? Colors.black : Colors.grey,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: _pageIndex == 1 ? Colors.black : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _pageIndex = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: _pageIndex == 2 ? Colors.black : Colors.grey,
                        ),
                        Text('Favorite',
                          style: TextStyle(
                            color: _pageIndex == 2 ? Colors.black : Colors.grey,
                          ),),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _pageIndex = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_balance_wallet_outlined,
                          color: _pageIndex == 3 ? Colors.black : Colors.grey,
                        ),
                        Text('Explore',
                          style: TextStyle(
                            color: _pageIndex == 3 ? Colors.black : Colors.grey,
                          ),),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
