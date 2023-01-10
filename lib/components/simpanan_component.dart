import 'package:flutter/material.dart';

class SimpananComponenet extends StatefulWidget {
  const SimpananComponenet({super.key});

  @override
  State<SimpananComponenet> createState() => _SimpananComponenetState();
}

class _SimpananComponenetState extends State<SimpananComponenet> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Simpanan',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Total Saldo kamu',
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              Row(
                children: [
                  const Text(
                    'Rp',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                      backgroundColor: const Color.fromARGB(255, 228, 231, 236),
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
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'bluAccount',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                height: 190,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 40, 63, 255),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.account_balance_wallet_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'bluAccount',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Rp',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            for (int i = 0; i < 8; i++)
                              const Icon(
                                Icons.circle,
                                color: Colors.white,
                                size: 13,
                              ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Aswin Khairu Adnan',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            const Text(
                              '|',
                              style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Row(
                              children: const [
                                Text(
                                  '0091 4212 8663',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.copy_rounded,
                                  color: Colors.white,
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Pockets',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 146, 65, 253),
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 226, 141, 14),
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 0, 184, 140),
                        borderRadius: BorderRadius.circular(16)),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
