import 'package:flutter/material.dart';
import 'package:google_clone/widgets/search_tab.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SearchTab(
            isActive: true,
            text: 'All',
            icon: Icons.search,
          ),
          SizedBox(width: 20),
          SearchTab(
            text: 'Images',
            icon: Icons.image,
          ),
          SizedBox(width: 20),
          SearchTab(
            text: 'Maps',
            icon: Icons.map,
          ),
          SizedBox(width: 20),
          SearchTab(
            text: 'News',
            icon: Icons.article,
          ),
          SizedBox(width: 20),
          SearchTab(
            text: 'Shopping',
            icon: Icons.shop,
          ),
          SizedBox(width: 20),
          SearchTab(
            text: 'More',
            icon: Icons.more_vert,
          ),
        ],
      ),
    );

    // return Container(
    //   height: 55,
    //   padding: const EdgeInsets.symmetric(horizontal: 170),
    //   child: const DefaultTabController(
    //     length: 6,
    //     child: TabBar(
    //       isScrollable: true,
    //       splashFactory: NoSplash.splashFactory,
    //       labelColor: blueColor,
    //       indicatorColor: blueColor,
    //       unselectedLabelColor: Colors.grey,
    //       tabs: [
    //         Tab(
    //           child: Row(
    //             children: [
    //               Icon(Icons.search),
    //               SizedBox(width: 5),
    //               Text('All'),
    //             ],
    //           ),
    //           //   text: 'All',
    //           //   icon: Icon(Icons.search),
    //         ),
    //         Tab(
    //           child: Row(
    //             children: [
    //               Icon(Icons.image),
    //               SizedBox(width: 5),
    //               Text('Images'),
    //             ],
    //           ),
    //         ),
    //         Tab(
    //             child: Row(
    //           children: [
    //             Icon(Icons.map),
    //             SizedBox(width: 5),
    //             Text('Maps'),
    //           ],
    //         )),
    //         Tab(
    //             child: Row(
    //           children: [
    //             Icon(Icons.article),
    //             SizedBox(width: 5),
    //             Text('News'),
    //           ],
    //         )),
    //         Tab(
    //             child: Row(
    //           children: [
    //             Icon(Icons.shop),
    //             SizedBox(width: 5),
    //             Text('Shopping'),
    //           ],
    //         )),
    //         Tab(
    //             child: Row(
    //           children: [
    //             Icon(Icons.more_vert),
    //             SizedBox(width: 5),
    //             Text('More'),
    //           ],
    //         )),
    //       ],
    //     ),
    //   ),
    // );
  }
}
