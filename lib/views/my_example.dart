import 'package:circular_chart_flutter/circular_chart_flutter.dart';
import 'package:flutter/material.dart';
import 'package:my_responsive_screen/responsive.dart';

class MyDashBoard extends StatefulWidget {
  final bool isAdvancedUser;
  final String userType;
  final GlobalKey<FormState> formKey;
  MyDashBoard({Key? key, required this.isAdvancedUser, required this.userType, required this.formKey}) : super(key: key);

  @override
  State<MyDashBoard> createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard> {
  final GlobalKey<AnimatedCircularChartState> _chartKey1 =
      GlobalKey<AnimatedCircularChartState>();
  final GlobalKey<AnimatedCircularChartState> _chartKey2 =
      GlobalKey<AnimatedCircularChartState>();
  final GlobalKey<AnimatedCircularChartState> _chartKey3 =
      GlobalKey<AnimatedCircularChartState>();
  final GlobalKey<AnimatedCircularChartState> _chartKey4 =
      GlobalKey<AnimatedCircularChartState>();
  List<String> titleListView = ['230k', '8.549k', '1.423k', '\$9745'];
  List<String> subtitleListView = ['Sales', 'Customers', 'Products', 'Revenue'];
  List<IconData?> iconListView = [
    Icons.percent,
    Icons.person_pin,
    Icons.layers_outlined,
    Icons.pie_chart,
  ];
  List<IconData?> bottomGridViewIcons = [
    Icons.south_east,
    Icons.south_east,
    Icons.north_east,
    Icons.north_east
  ];

  List<Color?> bottomGridViewIconsColor = [
    Colors.red,
    Colors.green,
    Colors.green,
    Colors.black
  ];

  List<Color?> bottomGridViewColors = [
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
  ];

  List<String> bottomGridViewFiveHundred = ['\$500', '\$150', '1000', '400'];
  List<double> bottomGridViewFiftyFive = [55, 30, 80, 70];
  List<String> bottomGridViewSales = ['Sales', 'Profit', 'Orders', 'Visits'];
  List<String> bottomGridViewTotalSalesToday = [
    'Total Sales Today',
    'Per day ratio',
    'Total Order Today',
    'Total Visit today'
  ];

  List<String> topGridViewViews = ['Views', 'Visits', 'Orders'];

  List<String> topGridViewFiveHundred = ['500', '2000', '5100'];

  List<String> topGridViewPerDay = ['Per Day', 'Per Minutes', 'Per Day'];

  List<IconData?> topGridViewIcons = [
    Icons.remove_red_eye_outlined,
    Icons.explore,
    Icons.storefront
  ];
  List<String> sideBarTitle = [
    'Home',
    'Projects',
    'Billings',
    'Team Members',
    'Stats',
    'Settings'
  ];
  List<IconData?> sideBarIcons = [
    Icons.home_outlined,
    Icons.add_circle_outline,
    Icons.warehouse_outlined,
    Icons.person_outline,
    Icons.bar_chart_outlined,
    Icons.settings_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            if (screenWidth >= 1200)
              Expanded(
                flex: 1,
                child: SideMenu(
                  icons: sideBarIcons,
                  title: sideBarTitle,
                ),
              ),
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.065,
                          horizontal: screenHeight * 0.05,
                        ),
                        color: Colors.white,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: screenWidth * 0.45,
                                height: screenHeight * 0.08,
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: 'Search for stats',
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                    prefixIcon: Padding(
                                      padding:
                                          EdgeInsets.only(left: 14, right: 8),
                                      child: Icon(Icons.search),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(15, 15)),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.01),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: RichText(
                                        text: const TextSpan(
                                          text: 'Hello David',
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            letterSpacing: 1.05,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: '\n\nWelcome Back !',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth * 0.08,
                                      height: screenHeight * 0.07,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(12, 15)),
                                        border: Border.all(
                                          color: Colors.grey.shade600,
                                          width: 1.5,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          if (screenWidth > 900)
                                            Text(
                                              'Filters',
                                              style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontSize: screenHeight * 0.02,
                                                letterSpacing: 0.6,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          Icon(
                                            Icons.tune,
                                            size: screenHeight * 0.03,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                color: Colors.white,
                                width: screenWidth,
                                height: screenHeight * 0.13,
                              ),
                              TopGridView(
                                crossAxisCount: screenWidth > 1000 ? 3 : 1,
                                screenWidth: screenWidth,
                                screenHeight: screenHeight,
                                topGridViewIcons: topGridViewIcons,
                                topGridViewViews: topGridViewViews,
                                topGridViewFiveHundred: topGridViewFiveHundred,
                                topGridViewPerDay: topGridViewPerDay,
                              ),
                              SizedBox(height: screenHeight * 0.04),
                              Container(
                                width: screenWidth,
                                height: screenWidth > 1000 ? screenHeight * 0.35 : screenHeight * 0.8,
                                // color: Colors.yellow,
                                child: GridView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: 4,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: screenWidth > 1000 ? 2 : 1,
                                    mainAxisSpacing: 19,
                                    crossAxisSpacing: 40,
                                    mainAxisExtent: 120,
                                  ),
                                  itemBuilder: (context, index) {
                                    GlobalKey<AnimatedCircularChartState> key;
                                    if (index == 0) {
                                      key = _chartKey1;
                                    } else if (index == 1) {
                                      key = _chartKey2;
                                    } else if (index == 2) {
                                      key = _chartKey3;
                                    } else {
                                      key = _chartKey4;
                                    }
                                    return Container(
                                      decoration: BoxDecoration(
                                        color: bottomGridViewColors[index],
                                        borderRadius: const BorderRadius.all(
                                          Radius.elliptical(30, 30),
                                        ),
                                      ),
                                      child: Container(
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(
                                                    top: 20, left: 40),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              bottom: 4),
                                                      child: Text(
                                                        bottomGridViewSales[
                                                            index],
                                                        style: const TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              bottom: 8),
                                                      child: Text(
                                                        bottomGridViewTotalSalesToday[
                                                            index],
                                                        style: const TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      bottomGridViewFiveHundred[
                                                          index],
                                                      style: const TextStyle(
                                                        fontSize: 28,
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                  width: screenWidth * 0.05),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 15, right: 20),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 10),
                                                      width: 130,
                                                      child: Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Icon(
                                                          bottomGridViewIcons[
                                                              index],
                                                          color:
                                                              bottomGridViewIconsColor[
                                                                  index],
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 130,
                                                      child:
                                                          AnimatedCircularChart(
                                                        chartType:
                                                            CircularChartType
                                                                .Radial,
                                                        key: key,
                                                        size:
                                                            const Size(70, 70),
                                                        initialChartData: [
                                                          CircularStackEntry(
                                                            [
                                                              CircularSegmentEntry(
                                                                bottomGridViewFiftyFive[
                                                                    index],
                                                                Colors.black,
                                                              ),
                                                              CircularSegmentEntry(
                                                                35.0,
                                                                bottomGridViewColors[
                                                                    index],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                        holeLabel:
                                                            '${bottomGridViewFiftyFive[index].toString()}%',
                                                        labelStyle:
                                                            const TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              if (screenWidth < 1000)
                                Container(
                                  width: screenWidth,
                                  padding: EdgeInsets.only(
                                    top: screenHeight * 0.045,
                                    bottom: screenHeight * 0.07,
                                    left: screenHeight * 0.04,
                                    right: screenHeight * 0.04,
                                  ),
                                  height: screenHeight,
                                  color: Colors.white,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(
                                        Radius.elliptical(30, 30),
                                      ),
                                    ),
                                    child: SingleChildScrollView(
                                      physics: NeverScrollableScrollPhysics(),
                                      child: Column(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(
                                                left: 40, right: 80, top: 40),
                                            child: Center(
                                              child: Text(
                                                'Sales Revenue',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                  letterSpacing: 1.2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, top: 40),
                                            child: Center(
                                              child: ListView.builder(
                                                shrinkWrap: true,
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                itemCount: titleListView.length,
                                                itemBuilder: (context, index) {
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: ListTile(
                                                      horizontalTitleGap:
                                                          screenWidth * 0.15,
                                                      minVerticalPadding: 10,
                                                      leading: CircleAvatar(
                                                        backgroundColor:
                                                            const Color(
                                                                0xffe1e1e1),
                                                        radius: 40,
                                                        child: Icon(
                                                          iconListView[index],
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      title: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                bottom: 10),
                                                        child: Text(
                                                          titleListView[index],
                                                          style:
                                                              const TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18,
                                                            letterSpacing: 1.1,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                          ),
                                                        ),
                                                      ),
                                                      subtitle: Text(
                                                        subtitleListView[index],
                                                        style: const TextStyle(
                                                          color:
                                                              Color(0xffe1e1e1),
                                                          letterSpacing: 1.1,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          fontSize: 11,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.only(
                                                left: 80, right: 80, top: 20),
                                            child: Center(
                                              child: Text(
                                                'Statistics',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                  letterSpacing: 1.2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: screenHeight * 0.02),
                                          // MyBarGraph(screenWidth: screenWidth),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    if (screenWidth > 1000)
                      if(widget.isAdvancedUser)
                      Container(
                        width: screenWidth * 0.25,
                        padding: EdgeInsets.only(
                          top: screenHeight * 0.045,
                          bottom: screenHeight * 0.07,
                          left: screenHeight * 0.04,
                          right: screenHeight * 0.04,
                        ),
                        height: screenHeight,
                        color: Colors.white,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(
                              Radius.elliptical(30, 30),
                            ),
                          ),
                          child: SingleChildScrollView(
                            physics: NeverScrollableScrollPhysics(),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 40, right: 80, top: 40),
                                  child: Text(
                                    'Sales Revenue',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      letterSpacing: 1.2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 35, top: 20),
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: titleListView.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ListTile(
                                          horizontalTitleGap: 20,
                                          minVerticalPadding: 10,
                                          leading: CircleAvatar(
                                            backgroundColor:
                                                const Color(0xffe1e1e1),
                                            radius: 40,
                                            child: Icon(
                                              iconListView[index],
                                              color: Colors.black,
                                            ),
                                          ),
                                          title: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Text(
                                              titleListView[index],
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                letterSpacing: 1.1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                          subtitle: Text(
                                            subtitleListView[index],
                                            style: const TextStyle(
                                              color: Color(0xffe1e1e1),
                                              letterSpacing: 1.1,
                                              overflow: TextOverflow.ellipsis,
                                              fontSize: 11,
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(
                                      left: 80, right: 80, top: 20),
                                  child: Text(
                                    'Statistics',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      letterSpacing: 1.2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                                SizedBox(height: screenHeight * 0.02),
                                // MyBarGraph(screenWidth: screenWidth),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopGridView extends StatelessWidget {
  const TopGridView({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.topGridViewIcons,
    required this.topGridViewViews,
    required this.topGridViewFiveHundred,
    required this.topGridViewPerDay,
    required this.crossAxisCount,
  });

  final double screenWidth;
  final double screenHeight;
  final List<IconData?> topGridViewIcons;
  final List<String> topGridViewViews;
  final List<String> topGridViewFiveHundred;
  final List<String> topGridViewPerDay;
  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.pink,
      width: screenWidth,
      height: screenWidth > 1000 ? screenHeight * 0.25 :screenHeight * 0.9 ,
      decoration:BoxDecoration(
        color: screenWidth > 1000 ? Color(0xffFC8C79) : Colors.white,
        borderRadius: BorderRadius.all(Radius.elliptical(50, 50)),
      ),
      child: GridView.builder(

        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: screenWidth > 1000 ? 0 :0,

          mainAxisExtent:200 ,
        ),
        scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(

            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 40, top: 25),
            child: Container(
              width: screenWidth,
              height: screenHeight * 0.8,

              decoration: BoxDecoration(
                color: screenWidth > 1000 ? Colors.transparent : Color(0xffFC8C79),
                borderRadius: BorderRadius.all(Radius.elliptical(50, 50)),
              ),
              child: Column(
                mainAxisAlignment: screenWidth > 1000 ? MainAxisAlignment.start: MainAxisAlignment.center,
                crossAxisAlignment: screenWidth > 1000 ? CrossAxisAlignment.start : CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: const Color(0xffe3e0d3),
                    child: Icon(
                      topGridViewIcons[index],
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.0135),
                  Text(
                    topGridViewViews[index],
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                      letterSpacing: 1.25,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.011),
                  Text(
                    topGridViewFiveHundred[index],
                    style: const TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.015),
                  Text(
                    topGridViewPerDay[index],
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                      letterSpacing: 1.25,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class MyBarGraph extends StatelessWidget {
  const MyBarGraph({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.025),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.height * 0.025,
              right: MediaQuery.of(context).size.height * 0.025,
            ),
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    '80',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.002),
                  const Text(
                    '60',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.002),
                  const Text(
                    '40',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.002),
                  const Text(
                    '20',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.002),
                  const Text(
                    '0',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.001),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: screenWidth * 0.1,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const MyColumnBar(
                            percentage: 20,
                            color: Color(0xffeffcef),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.008),
                          const MyColumnBar(
                            percentage: 30,
                            color: Color(0xff85a088),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.008),
                          const MyColumnBar(
                            percentage: 80,
                            color: Color(0xffeffcef),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.008),
                          const MyColumnBar(
                            percentage: 40,
                            color: Color(0xff85a088),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.008),
                          const MyColumnBar(
                            percentage: 20,
                            color: Color(0xffeffcef),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyColumnBar extends StatelessWidget {
  final Color? color;
  final double percentage;

  const MyColumnBar({
    super.key,
    required this.percentage,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final height =
        (MediaQuery.of(context).size.height * 0.1) * (percentage / 100);
    return Column(
      children: [
        Text(
          '${height.toInt()}',
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        SizedBox(height: 12 * MediaQuery.of(context).size.height / 1080),
        Container(
          height: height,
          width: MediaQuery.of(context).size.width * 0.012,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ],
    );
  }
}

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
    required this.icons,
    required this.title,
  });

  final List<IconData?> icons;
  final List<String> title;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: DrawerHeader(
                    child: Icon(
                      Icons.apps_outlined,
                      color: Colors.grey.shade600,
                      size: 30,
                    ),
                  )),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: icons.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ListTile(
                    leading: Icon(
                      icons[index],
                      color: Colors.black,
                    ),
                    title: Text(
                      title[index],
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w200,
                        overflow: TextOverflow.ellipsis,
                        fontSize: 15,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
