import 'package:blu_clone/components/home_component.dart';
import 'package:blu_clone/components/simpanan_component.dart';
import 'package:blu_clone/components/tracker_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int isTabBarActive = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20),
        child: FloatingActionButton.extended(
          extendedPadding: EdgeInsets.zero,
          onPressed: () {
            showModal(context);
          },
          label: Container(
            padding: const EdgeInsets.only(
              top: 12,
              bottom: 12,
              right: 10,
              left: 20,
            ),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 40, 63, 255),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: [
                const Text('Transaksi'),
                const SizedBox(
                  width: 5,
                ),
                SvgPicture.asset(
                  'assets/svg/phone.svg',
                  height: 40,
                  color: const Color.fromARGB(255, 48, 206, 208),
                )
              ],
            ),
          ),
          elevation: 0,
        ),
      ),
      body: DefaultTabController(
        length: 3, // length of tabs
        initialIndex: 1,
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(
                top: 40,
                bottom: 40,
              ),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 48, 206, 208),
              ),
              child: TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.white,
                indicator: const BoxDecoration(),
                onTap: (value) {
                  setState(() {
                    isTabBarActive = value;
                  });
                },
                tabs: [
                  Tab(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 2),
                      decoration: BoxDecoration(
                        color: (isTabBarActive == 0)
                            ? Colors.white
                            : Colors.transparent.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/svg/pie.svg',
                            width: 22,
                            color: (isTabBarActive == 0)
                                ? const Color.fromARGB(255, 48, 206, 208)
                                : Colors.white,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text('Tracker'),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 2),
                      decoration: BoxDecoration(
                        color: (isTabBarActive == 1)
                            ? Colors.white
                            : Colors.transparent.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/svg/home.svg',
                            width: 20,
                            // height: 22,
                            color: (isTabBarActive == 1)
                                ? const Color.fromARGB(255, 48, 206, 208)
                                : Colors.white,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text('Home'),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 2),
                      decoration: BoxDecoration(
                        color: (isTabBarActive == 2)
                            ? Colors.white
                            : Colors.transparent.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/svg/wallet.svg',
                            width: 20,
                            // height: 22,
                            color: (isTabBarActive == 2)
                                ? const Color.fromARGB(255, 48, 206, 208)
                                : Colors.white,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text('Simpanan'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 100),
              padding: const EdgeInsets.symmetric(vertical: 40),
              height: MediaQuery.of(context).size.height -
                  100, //height of TabBarView
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: const TabBarView(
                physics: BouncingScrollPhysics(),
                children: [
                  TrackerComponent(),
                  HomeComponent(),
                  SimpananComponenet(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void showModal(BuildContext context) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        height: 400,
        child: Stack(
          children: [
            Container(
              // height: 200,
              padding: const EdgeInsets.only(
                top: 50,
                right: 40,
                left: 40,
                bottom: 20,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                mainAxisSpacing: 0,
                // crossAxisSpacing: 15,
                children: [
                  for (int i = 0; i < buttonAttribute.length; i++)
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.only(bottom: 10),
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 29, 53, 249),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: SvgPicture.asset(
                            buttonAttribute[i].path,
                            fit: BoxFit.contain,
                            color: const Color.fromARGB(255, 48, 206, 208),
                          ),
                        ),
                        Text(
                          buttonAttribute[i].title,
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: const EdgeInsets.only(top: 8),
                height: 5,
                width: 30,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 243, 244, 246),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                autofocus: false,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 30, right: 50),
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 243, 244, 246),
                  ),
                  child: const Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      );
    },
  );
}

class ButtonAttribute {
  String title;
  String path;

  ButtonAttribute(this.title, this.path);
}

List<ButtonAttribute> buttonAttribute = [
  ButtonAttribute('Transfer', 'assets/svg/phone.svg'),
  ButtonAttribute('Bayar/Beli', 'assets/svg/bill.svg'),
  ButtonAttribute('Top Up E-Money', 'assets/svg/wallet.svg'),
  ButtonAttribute('Bayar pakai QR', 'assets/svg/qris.svg'),
  ButtonAttribute('Tarik Tunai', 'assets/svg/cash.svg'),
  ButtonAttribute('Setor Tunai', 'assets/svg/cash.svg'),
  ButtonAttribute('BCA Virtual Account', 'assets/svg/phone.svg'),
  ButtonAttribute('blueGift', 'assets/svg/present.svg'),
];
