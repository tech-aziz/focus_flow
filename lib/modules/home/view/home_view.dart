import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../utils/style/color.dart';
import '../../../utils/style/text_style.dart';
import '../../../widgets/custom_appbar.dart';
import '../../create_task/view/create_task_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> weekList = [
    'All',
    '12 September',
    '13 September',
    '14 September',
    '15 September',
    '16 September',
  ];
  String selectedDate = 'All';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: customAppBar(
          leadingWidth: 200,
          appBarHeight: 100,
          leading: Row(
            children: [
              const SizedBox(
                width: 11,
              ),
              Text(
                'Good morning,\nAlexa!',
                style: textStyle(
                    color: Colors.black.withOpacity(0.8),
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          title: '',
          actions: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                      width: .9, color: Colors.grey.withOpacity(0.4)),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/icons/notification.png',
                      height: 25,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/person.jpg',
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                      width: .9, color: Colors.grey.withOpacity(0.4)),
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //button start
              InkWell(
                onTap: () {
                  Get.to(()=> const CreateTaskView());
                },
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black,
                      border: Border.all(
                          width: 1, color: Colors.grey.withOpacity(0.5))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white.withOpacity(0.9),
                            size: 18,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Create new task',
                            style: textStyle(
                              color: Colors.white.withOpacity(0.9),
                              fontWeight: FontWeight.normal,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              //button end
              const SizedBox(
                height: 15,
              ),
              //task overview start
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tasks overview',
                    style: textStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              color: Colors.blue.withOpacity(0.9),
                              width: 2.0), // Underline properties
                        ),
                      ),
                      child: Text(
                        'See all',
                        style: TextStyle(
                            fontSize: 20, color: Colors.blue.withOpacity(0.9)),
                      ),
                    ),
                  ),
                ],
              ),
              //task overview end
              const SizedBox(
                height: 15,
              ),

              //scrollable button start
              SizedBox(
                height: 45,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: weekList.length,
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context, index) {
                    final data = weekList[index];
                    bool isSelected = data == selectedDate;
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedDate = data; // Update the selected date
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: isSelected
                                  ? (data == 'All'
                                      ? const Color(0xffD1FD57)
                                      : const Color(0xffD1FD57))
                                  : Colors.grey.withOpacity(0.5)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              data.toString(),
                              style: textStyle(
                                  fontWeight: FontWeight.bold,
                                  color:
                                      isSelected ? Colors.black : Colors.grey,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              //scrollable button end
              const SizedBox(
                height: 15,
              ),
              //middle container start
              Container(
                height: 200,
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 18),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xff3660F9)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Number of tasks performed',
                          style: textStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 19),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: const Color(0xffD1FD57),
                              border: Border.all(
                                  width: .4,
                                  color: Colors.grey.withOpacity(0.5)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 0,
                                  blurRadius: 0,
                                  offset: const Offset(
                                      0, 0), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Center(
                                child: SvgPicture.asset(
                              'assets/icons/arrow-right.svg',
                              height: 15,
                            )),
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('153',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 40)),
                        Text(
                          'Permanent tasks',
                          style: textStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 19),
                        )
                      ],
                    )
                  ],
                ),
              ),
              //middle container end

              //sub container start
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 190,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 18),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: const Color(0xffD9D9FB)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Unfulfilled tasks',
                                style: textStyle(
                                    color: Colors.black.withOpacity(0.7),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: const Color(0xffD1FD57),
                                    border: Border.all(
                                        width: .4,
                                        color: Colors.grey.withOpacity(0.5)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 0,
                                        blurRadius: 0,
                                        offset: const Offset(
                                            0, 0), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                      child: SvgPicture.asset(
                                    'assets/icons/arrow-right.svg',
                                    height: 15,
                                  )),
                                ),
                              )
                            ],
                          ),
                          const Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('23',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.7),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 40)),
                              Text(
                                'Permanent tasks',
                                style: textStyle(
                                    color: Colors.black.withOpacity(0.7),
                                    fontSize: 19),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 190,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 18),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                              width: 2, color: Colors.grey.withOpacity(0.2)),
                          color: const Color(0xffffffff)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Team tasks',
                                style: textStyle(
                                    color: Colors.black.withOpacity(0.7),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: const Color(0xffD1FD57),
                                    border: Border.all(
                                        width: .4,
                                        color: Colors.grey.withOpacity(0.5)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 0,
                                        blurRadius: 0,
                                        offset: const Offset(
                                            0, 0), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                      child: SvgPicture.asset(
                                    'assets/icons/arrow-right.svg',
                                    height: 15,
                                  )),
                                ),
                              )
                            ],
                          ),
                          const Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('56',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.7),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40)),
                              Text(
                                'Permanent tasks',
                                style: textStyle(
                                    color: Colors.black.withOpacity(0.7),
                                    fontSize: 19),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              //sub container end
              const SizedBox(
                height: 16,
              ),
              //manage task text start
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Manage your \nprojects',
                    style: textStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xffEEF2FF),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '(16)',
                            style: textStyle(
                                fontSize: 20,
                                color: Colors.black.withOpacity(0.7),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //manage task text end
              const SizedBox(
                height: 12,
              ),
              //bottom section start
              Row(
                children: [
                  Expanded(
                    flex: 1, // Slightly more than 1/3 of the width
                    child: Container(
                      alignment: Alignment.center,
                      height: 140,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                            width: 2, color: Colors.grey.withOpacity(0.2)),
                        color: const Color(0xffffffff),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/person.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                      width: .9,
                                      color: Colors.grey.withOpacity(0.4),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/person.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                      width: .9,
                                      color: Colors.grey.withOpacity(0.4),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/person.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                      width: .9,
                                      color: Colors.grey.withOpacity(0.4),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff3660F9),
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                      width: .9,
                                      color: Colors.grey.withOpacity(0.4),
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.dashboard_customize_outlined,
                                    color: Colors.white.withOpacity(0.7),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2, // Slightly less than 2/3 of the width
                    child: Container(
                      height: 140,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 18),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                            width: 2, color: Colors.grey.withOpacity(0.2)),
                        color: const Color(0xffffffff),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Calls with Teammates',
                            style: textStyle(
                              color: Colors.black.withOpacity(0.7),
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(height: 4,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
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
                                    child: Image.asset(
                                      'assets/icons/linkedin.jpg',
                                      height: 22,
                                    ),
                                  ),
                                ),
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
                                    child: Image.asset(
                                      'assets/icons/meet.png',
                                      height: 24,
                                    ),
                                  ),
                                ),
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
                                    child: Image.asset(
                                      'assets/icons/telegram.png',
                                      height: 19,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: const Color(0xffD1FD57),
                                ),
                                child: const Center(
                                  child: Icon(Icons.add, color: Colors.black,size: 20,),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              //bottom section end
              const SizedBox(
                height: 12,
              )
            ],
          ),
        ),
      ),
    );
  }
}
