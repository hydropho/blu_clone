import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeComponent extends StatefulWidget {
  const HomeComponent({super.key});

  @override
  State<HomeComponent> createState() => _HomeComponentState();
}

class _HomeComponentState extends State<HomeComponent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          // =====================================
          //              TOP ICON
          // =====================================
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 185, 218),
                  shape: const CircleBorder(),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    'AK',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                        color: Colors.white),
                  ),
                ),
                onPressed: () {},
              ),
              Row(
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 243, 244, 246),
                      shape: const CircleBorder(),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: SvgPicture.asset(
                        'assets/svg/chat.svg',
                        width: 24,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 243, 244, 246),
                      shape: const CircleBorder(),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: SvgPicture.asset(
                        'assets/svg/bell.svg',
                        width: 24,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),

          // =====================================
          //             SALDO & KARTU
          // =====================================
          DefaultTabController(
            length: 2,
            initialIndex: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TabBar(
                  isScrollable: true,
                  labelColor: Color.fromARGB(255, 12, 21, 50),
                  labelStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  indicatorColor: Color.fromARGB(255, 40, 63, 225),
                  unselectedLabelColor: Color.fromARGB(255, 134, 143, 150),
                  labelPadding: EdgeInsets.symmetric(horizontal: 10),
                  indicatorPadding: EdgeInsets.zero,
                  tabs: [
                    Tab(
                      text: 'Saldo',
                    ),
                    Tab(
                      text: 'Kartu',
                    ),
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 223, 227, 229),
                      ),
                    ),
                  ),
                  height: 218,
                  padding: const EdgeInsets.only(top: 20),
                  child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 244, 246),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    width: 1,
                                    color: Color.fromARGB(255, 223, 227, 229),
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        'bluAccount ',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '- 0091 4212 8663',
                                        style: TextStyle(fontSize: 16),
                                      )
                                    ],
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: SvgPicture.asset(
                                        'assets/svg/copy.svg',
                                        width: 28),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        'Rp',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      for (int i = 0; i < 8; i++)
                                        const Icon(
                                          Icons.circle,
                                          color: Colors.black,
                                          size: 13,
                                        ),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255, 228, 231, 236),
                                          shape: const CircleBorder(),
                                        ),
                                        child: const Icon(
                                          Icons.remove_red_eye_outlined,
                                          color: Colors.black,
                                          size: 18,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 12),
                                    child: Row(
                                      children: [
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 228, 231, 236),
                                            shape: const StadiumBorder(),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 10,
                                            ),
                                            child: Text(
                                              'Pindah Dana',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          onPressed: () {},
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 228, 231, 236),
                                            shape: const StadiumBorder(),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8),
                                            child: Text(
                                              'QRIS',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 40, 63, 255),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'bluVirtual Card',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Terhubung ke bluAccount',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            const Text(
                                              'Rp ',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            for (int i = 0; i < 8; i++)
                                              const Icon(
                                                Icons.circle,
                                                color: Colors.white,
                                                size: 13,
                                              ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Icon(
                                              Icons.remove_red_eye_outlined,
                                              color: Colors.white,
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 18,
                                        ),
                                        Row(
                                          children: [
                                            for (int i = 0; i < 3; i++)
                                              Row(
                                                children: [
                                                  for (int j = 0; j < 4; j++)
                                                    const Icon(
                                                      Icons.circle,
                                                      color: Colors.white,
                                                      size: 8,
                                                    ),
                                                  const SizedBox(
                                                    width: 5,
                                                  )
                                                ],
                                              ),
                                            const Text(
                                              '6123',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            const Icon(
                                              Icons.remove_red_eye_outlined,
                                              color: Colors.white,
                                            )
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Container(
                                  height: 85,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 48, 206, 208),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),

          // =====================================
          //          TRANSAKSI FAVORITE
          // =====================================
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Transaksi Favorite',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'lihat semua',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.withOpacity(0.8),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 15,
                  right: 20,
                  left: 20,
                  bottom: 10,
                ),
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey.withOpacity(0.5),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            Image.asset(
                              'assets/png/gojek.png',
                              width: 30,
                              height: 30,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text('GoPay'),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),

          // =====================================
          //               INSIGHT
          // =====================================
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Insights',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20),
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    for (int i = 0; i < 12; i++)
                      Image.asset(
                        'assets/png/${i + 1}.png',
                        width: 140,
                      ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
