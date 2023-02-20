import 'package:circular_chart_flutter/circular_chart_flutter.dart';
import 'package:flutter/material.dart';

class MyDashBoard extends StatefulWidget {
  // final bool isAdvancedUser;
  // final String userType;
  // final GlobalKey<FormState> formKey;
  // MyDashBoard({Key? key, required this.isAdvancedUser, required this.userType, required this.formKey}) : super(key: key);

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
    const Color(0xffffefe2),
    const Color(0xffeffcef),
    const Color(0xffe6f5f9),
    const Color(0xfff4f6fa)
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // if(widget.isAdvancedUser)
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
                            Container(
                              // color: Colors.pink,
                              width: screenWidth,
                              height: screenHeight * 0.25,
                              decoration: const BoxDecoration(
                                color: Color(0xfffaf8f4),
                                borderRadius:
                                    BorderRadius.all(Radius.elliptical(50, 50)),
                              ),
                              child: GridView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                ),
                                scrollDirection: Axis.vertical,
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return Container(
                                    padding: const EdgeInsets.only(
                                        left: 40, top: 25),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          backgroundColor:
                                              const Color(0xffe3e0d3),
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
                                  );
                                },
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.04),
                            Container(
                              width: screenWidth,
                              height: screenHeight * 0.35,
                              // color: Colors.yellow,
                              child: GridView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: 4,
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
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
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(bottom: 4),
                                                child: Text(
                                                  bottomGridViewSales[index],
                                                  style: const TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(bottom: 8),
                                                child: Text(
                                                  bottomGridViewTotalSalesToday[index],
                                                  style: const TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                bottomGridViewFiveHundred[index],
                                                style: const TextStyle(
                                                  fontSize: 28,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(right: 10),
                                                width: 130,
                                                child: Align(
                                                  alignment: Alignment.centerRight,
                                                  child: Icon(
                                                    bottomGridViewIcons[index],
                                                    color: bottomGridViewIconsColor[index],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 130,
                                                child: AnimatedCircularChart(
                                                  chartType: CircularChartType.Radial,
                                                  key: key,
                                                  size: const Size(70, 70),
                                                  initialChartData: [
                                                    CircularStackEntry(
                                                      [
                                                        CircularSegmentEntry(
                                                          bottomGridViewFiftyFive[index],
                                                          Colors.black,
                                                        ),
                                                        CircularSegmentEntry(
                                                          35.0,
                                                          bottomGridViewColors[index],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                  holeLabel: '${bottomGridViewFiftyFive[index].toString()}%',
                                                  labelStyle: const TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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

  GridView bottomGridView(double screenWidth, double screenHeight) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 30,
        childAspectRatio: 4,
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
        return bottomGridViewContainer(screenWidth, screenHeight, index, key);
      },
    );
  }

  Container bottomGridViewContainer(double screenWidth, double screenHeight,
      int index, GlobalKey<AnimatedCircularChartState> key) {
    return Container(
      width: screenWidth * 0.18,
      height: screenHeight * 0.2,
      decoration: BoxDecoration(
        color: bottomGridViewColors[index],
        borderRadius: const BorderRadius.all(
          Radius.elliptical(30, 30),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 21),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Text(
                      bottomGridViewSales[index],
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      bottomGridViewTotalSalesToday[index],
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Text(
                    bottomGridViewFiveHundred[index],
                    style: const TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 10),
                  width: 130,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      bottomGridViewIcons[index],
                      color: bottomGridViewIconsColor[index],
                    ),
                  ),
                ),
                SizedBox(
                  width: 130,
                  child: AnimatedCircularChart(
                    chartType: CircularChartType.Radial,
                    key: key,
                    size: const Size(70, 70),
                    initialChartData: [
                      CircularStackEntry(
                        [
                          CircularSegmentEntry(
                            bottomGridViewFiftyFive[index],
                            Colors.black,
                          ),
                          CircularSegmentEntry(
                            35.0,
                            bottomGridViewColors[index],
                          ),
                        ],
                      ),
                    ],
                    holeLabel: '${bottomGridViewFiftyFive[index].toString()}%',
                    labelStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
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
