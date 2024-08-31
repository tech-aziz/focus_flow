import 'package:flutter/material.dart';
import 'package:focus_flow/utils/style/text_style.dart';
import 'package:get/get.dart';
import '../../../utils/style/color.dart';
import '../../../widgets/custom_appbar.dart';

class CreateTaskView extends StatefulWidget {
  const CreateTaskView({super.key});

  @override
  State<CreateTaskView> createState() => _CreateTaskViewState();
}

class _CreateTaskViewState extends State<CreateTaskView> {
  List<Map<String, String>> statisticsValue = [
    {'title': '12h 33m', 'subTitle': 'Total time'},
    {'title': '70%', 'subTitle': 'Productivity'},
    {'title': '97%', 'subTitle': 'Successfully'},
    {'title': '6h 3m', 'subTitle': 'Rest Time'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: customAppBar(
          leadingWidth: 115,
          centerTitle: true,
          leading: Row(
            children: [
              const SizedBox(
                width: 11,
              ),
              InkWell(
                onTap: () => Get.back(),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xffEEF2FF),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.black.withOpacity(0.7),
                        size: 16,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: const Color(0xffEEF2FF),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.black.withOpacity(0.7),
                      size: 20,
                    ),
                  ),
                ),
              )
            ],
          ),
          title: 'Mon,12 Sep, 2024',
          style: textStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Colors.black.withOpacity(0.7))),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Track your schedule',
                style: textStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () => Get.back(),
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xffEEF2FF),
                      ),
                      child: Center(
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/icons/link.png',
                              color: Colors.black,
                              height: 22,
                            )),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xffEEF2FF),
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.score_rounded,
                            color: Colors.black,
                            size: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => Get.back(),
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xffEEF2FF),
                      ),
                      child: Center(
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/icons/meet.png',
                              height: 25,
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Row(
                    children: [
                      Text(
                        'synced with ',
                        style: TextStyle(
                            color: Colors.grey.withOpacity(0.7), fontSize: 14),
                      ),
                      const Text(
                        'Notion & Zoom',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Overview statistics',
                style: textStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 110,
                child: ListView.builder(
                  itemCount: statisticsValue.length,
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final data = statisticsValue[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 14),
                      child: Container(
                        height: 110,
                        width: 150.0,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 18),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xffEEF2FF)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data['title'].toString(),
                              style: textStyle(
                                  color: Colors.black.withOpacity(0.7),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 30),
                            ),
                            Text(
                              data['subTitle'].toString(),
                              style: textStyle(
                                  color: Colors.black.withOpacity(0.4),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Calendar & Tasks',
                style: textStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xffD1FD57)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '01',
                              style: textStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 16),
                            ),
                            Text(
                              '02',
                              style: textStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 16),
                            ),
                            Text(
                              '03',
                              style: textStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 16),
                            ),
                            Text(
                              '04',
                              style: textStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 16),
                            ),
                            Text(
                              '05',
                              style: textStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '06',
                            style: textStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                          Text(
                            '07',
                            style: textStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '08',
                              style: textStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 16),
                            ),
                            Text(
                              '09',
                              style: textStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 16),
                            ),
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.grey.withOpacity(0.2)),
                            ),
                            Text(
                              '11',
                              style: textStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xff3660F9)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '12',
                            style: textStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontSize: 16),
                          ),
                          Text(
                            '13',
                            style: textStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontSize: 16),
                          ),
                          Text(
                            '14',
                            style: textStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.grey.withOpacity(0.2)),
                          ),
                          Text(
                            '16',
                            style: textStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                          Text(
                            '17',
                            style: textStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xffD9D9FB)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '18',
                              style: textStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 16),
                            ),
                            Text(
                              '19',
                              style: textStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 16),
                            ),
                            Text(
                              '20',
                              style: textStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 16),
                            ),
                            Text(
                              '21',
                              style: textStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xffD9D9FB)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '22',
                              style: textStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 16),
                            ),
                            Text(
                              '23',
                              style: textStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 16),
                            ),
                            Text(
                              '24',
                              style: textStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 16),
                            ),
                            Text(
                              '25',
                              style: textStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.grey.withOpacity(0.2)),
                          ),
                          Text(
                            '26',
                            style: textStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                          Text(
                            '27',
                            style: textStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xffD1FD57)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '29',
                              style: textStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 16),
                            ),
                            Text(
                              '30',
                              style: textStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 16),
                            ),
                            Text(
                              '31',
                              style: textStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '',
                            style: textStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                          Text(
                            '',
                            style: textStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color(0xff3660F9)),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Important tasks',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.normal,
                            fontSize: 17),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color(0xffD1FD57)),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Everyday tasks',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.normal,
                            fontSize: 17),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey.withOpacity(0.5)),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Unfulfilled tasks',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.normal,
                            fontSize: 17),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey.withOpacity(0.5)),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Team tasks',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.normal,
                            fontSize: 17),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
