import 'package:flutter/material.dart';

class TalabatCard extends StatelessWidget {
  const TalabatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: .1),
      ),
      width: double.infinity,
      height: 178,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          border: Border.all(width: 1),
                        ),
                        child: const Text(
                          "السعر",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "ابوفهد عبدالعزيز",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "1097 Daju Ridge ",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    "1283 Cunema Extension",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "اريد توصيل شحنة خشب الي ميناء",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                "assits/images/box.jpg",
                scale: 12,
              ),
            ],
          ),
          const Divider(
            thickness: 1,
            endIndent: 15,
            indent: 15,
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: .1),
                ),
                child: const Icon(
                  Icons.cancel_outlined,
                  size: 40,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 100,
                padding: const EdgeInsetsDirectional.all(5),
                decoration: BoxDecoration(
                  color: const Color(0xff51C1F6),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text("التفاصيل"),
              ),
              const Spacer(),
              const Text("04 Jul 2021"),
              const SizedBox(
                width: 5,
              ),
              const Icon(Icons.date_range_outlined),
            ],
          ),
        ],
      ),
    );
  }
}
