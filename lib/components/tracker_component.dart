import 'dart:math';

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_svg/flutter_svg.dart';

class TrackerComponent extends StatefulWidget {
  const TrackerComponent({super.key});

  @override
  State<TrackerComponent> createState() => _TrackerComponentState();
}

class _TrackerComponentState extends State<TrackerComponent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      // padding:
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              bottom: 20,
              right: 30,
              left: 30,
            ),
            child: Text(
              'Tracker',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 30,
              left: 30,
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 223, 227, 229),
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Bulan',
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Januari 2023',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                          SvgPicture.asset('assets/svg/calendar.svg')
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 20,
                  ),
                  child: SizedBox(
                    height: 200,
                    child: charts.BarChart(
                      series,
                      animate: true,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Rp 357.000,00',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 254, 171, 1),
                          ),
                        ),
                        Text(
                          'Pengeluaran',
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      '|',
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 50,
                        color: Color.fromARGB(255, 223, 227, 229),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Rp 362.000,00',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 1, 184, 140),
                          ),
                        ),
                        Text(
                          'Pemasukan',
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          DefaultTabController(
            length: 2,
            initialIndex: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 5,
                    right: 30,
                    left: 30,
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(top: 40),
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 244, 246),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TabBar(
                      indicator: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      labelColor: const Color.fromARGB(255, 13, 29, 57),
                      unselectedLabelColor:
                          const Color.fromARGB(255, 135, 147, 158),
                      //     Color.fromARGB(255, 134, 143, 150),
                      tabs: const [
                        Tab(
                          text: 'Riwayat Transaksi',
                        ),
                        Tab(
                          text: 'Kategori',
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 600,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(top: 20),
                  child: TabBarView(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 20,
                            ),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 243, 244, 246),
                            ),
                            child: const Text(
                              'Januari 2023',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          for (int i = 0; i < transactionHistory.length; i++)
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 20,
                              ),
                              decoration: const BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    width: 0.3,
                                    color: Color.fromARGB(255, 243, 244, 246),
                                  ),
                                  bottom: BorderSide(
                                    width: 0.3,
                                    color: Color.fromARGB(255, 243, 244, 246),
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: (transactionHistory[i].type ==
                                                  'in')
                                              ? const Color.fromARGB(
                                                  255, 1, 184, 140)
                                              : const Color.fromARGB(
                                                  255, 254, 171, 1),
                                        ),
                                        child:
                                            (transactionHistory[i].type == 'in')
                                                ? const Icon(
                                                    Icons.add,
                                                    color: Colors.white,
                                                  )
                                                : const Icon(
                                                    Icons.horizontal_rule,
                                                    color: Colors.white,
                                                  ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            transactionHistory[i].title,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 6,
                                          ),
                                          Text(transactionHistory[i].from),
                                          const SizedBox(
                                            height: 6,
                                          ),
                                          Text(transactionHistory[i].date),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Text(
                                    transactionHistory[i].total,
                                    style: TextStyle(
                                      color:
                                          (transactionHistory[i].type == 'in')
                                              ? Colors.green
                                              : Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Tracker {
  final String rangeDate;
  final int total;

  Tracker(this.rangeDate, this.total);
}

class TransactionHistory {
  final String type;
  final String title;
  final String from;
  final String date;
  final String total;

  TransactionHistory(
      {required this.type,
      required this.title,
      required this.from,
      required this.date,
      required this.total});
}

List<TransactionHistory> transactionHistory = [
  TransactionHistory(
    type: 'in',
    title: 'Dana Masuk dari ELON MUSK',
    from: 'BCA',
    date: '06 Jan 2023 16:57 WIB',
    total: 'Rp 100.000,00',
  ),
  TransactionHistory(
    type: 'in',
    title: 'Dana Masuk dari RAFI SOLICHIN',
    from: 'BCA',
    date: '05 Jan 2023 21:08 WIB',
    total: 'Rp 107.000,00',
  ),
  TransactionHistory(
    type: 'in',
    title: 'Cashback',
    from: 'FREEMONTHQRISBLU012023',
    date: '05 Jan 2023 21:07 WIB',
    total: 'Rp 5.000,00',
  ),
  TransactionHistory(
    type: 'out',
    title: 'Pembayaran QR',
    from: 'WIS NGOPI 000885001321644',
    date: '05 Jan 2023 21:07 WIB',
    total: '- Rp 107.000,00',
  ),
  TransactionHistory(
    type: 'out',
    title: 'Tarik Tunai',
    from: 'ATM BCA ZT5P',
    date: '02 Jan 2023 21:21 WIB',
    total: '- Rp 100.000,00',
  ),
];

final outcome = [
  Tracker('1-7', 300),
  Tracker('8-14', 100),
  Tracker('15-21', 0),
  Tracker('22-28', 0),
  Tracker('29-31', 0),
];

final income = [
  Tracker('1-7', 350),
  Tracker('8-14', 1000),
  Tracker('15-21', 0),
  Tracker('22-28', 0),
  Tracker('29-31', 0),
];

final series = [
  charts.Series(
    id: 'Outcome',
    data: outcome,
    domainFn: (Tracker tracker, _) => tracker.rangeDate,
    measureFn: (Tracker tracker, _) => tracker.total,
    colorFn: (Tracker tracker, _) => charts.ColorUtil.fromDartColor(
      const Color.fromARGB(255, 254, 171, 1),
    ),
  ),
  charts.Series(
    id: 'Income',
    data: income,
    domainFn: (Tracker tracker, _) => tracker.rangeDate,
    measureFn: (Tracker tracker, _) => tracker.total,
    colorFn: (Tracker tracker, _) => charts.ColorUtil.fromDartColor(
      const Color.fromARGB(255, 1, 184, 140),
    ),
  ),
];
