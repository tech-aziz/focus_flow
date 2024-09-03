import 'package:flutter/material.dart';
import 'package:focus_flow/utils/style/color.dart';
import 'package:focus_flow/utils/style/text_style.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../widgets/custom_appbar.dart';
import '../../../home/view/home_view.dart';

class GetStartedView extends StatefulWidget {
  const GetStartedView({super.key});

  @override
  State<GetStartedView> createState() => _GetStartedViewState();
}

class _GetStartedViewState extends State<GetStartedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: customAppBar(
          leadingWidth: 200,
          leading: Row(
            children: [
              const SizedBox(
                width: 8,
              ),
              SvgPicture.asset(
                'assets/icons/icon.svg',
                height: 25,
                width: 25,
                color: const Color(0xffB7B7FF),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                'FocusFlow',
                style: textStyle(
                    color: const Color(0xffB7B7FF),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          title: '',
          actions: [
            TextButton(
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero, alignment: Alignment.centerRight),
                onPressed: () {},
                child: Text('Skip',
                    style: textStyle(
                        textDecoration: TextDecoration.underline,
                        color: const Color(0xffB7B7FF),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        decorationColor: const Color(0xffB7B7FF)))),
            const SizedBox(
              width: 10,
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // top text section start
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Take',
                                style: textStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black.withOpacity(0.7),
                                    fontSize: 40),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: const Color(0xffD1FD57)),
                                child: const Icon(
                                  Icons.offline_bolt_outlined,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: const Color(0xffD1FD57)),
                                child: const Icon(
                                  Icons.question_answer_outlined,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                          Text(
                            'Charge Of',
                            style: textStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black.withOpacity(0.7),
                                fontSize: 40),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        'assets/icons/icon.svg',
                        height: 110,
                        width: 25,
                        color: const Color(0xffB7B7FF),
                      ),
                    ],
                  ),
                  Text(
                    'This Productivity',
                    style: textStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black.withOpacity(0.7),
                        fontSize: 40),
                  )
                ],
              ),
            ),
            // top text section end

            const SizedBox(
              height: 12,
            ),

            //middle text section start
            Text(
              'Prioritise and set deadlines so \nyou don\'t miss anything important',
              style: textStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.23),
                  fontSize: 20),
            ),
            //middle text section end

            const SizedBox(
              height: 20,
            ),
            //slider section start
            SizedBox(
              height: 275,
              child: ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                primary: false,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 14),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 15),
                      height: 230,
                      width: 230,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 8,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
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
                                  'assets/icons/productivity.svg',
                                  height: 14,
                                )),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Your productivity',
                                style: textStyle(
                                    color: Colors.black.withOpacity(0.7),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                text: TextSpan(children: [
                                  const TextSpan(
                                      text: '576 ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 28)),
                                  WidgetSpan(
                                    child: Transform.translate(
                                      offset: const Offset(-4, 0),
                                      child: Text(
                                        '  points',
                                        //superscript is usually smaller in size
                                        textScaleFactor: 0.7,
                                        style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.4),
                                            fontSize: 18),
                                      ),
                                    ),
                                  )
                                ]),
                              ),
                            ],
                          ),
                          Container(
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                    width: 1,
                                    color: Colors.grey.withOpacity(0.2))),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 24,
                                    width: 24,
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
                                          offset: const Offset(0,
                                              0), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: const Center(
                                        child: Icon(Icons.keyboard_double_arrow_up,size: 15,)),
                                  ),
                                ),
                                const SizedBox(
                                  width: 9,
                                ),
                                Text(
                                  'You\'re productive than 53% team!',
                                  style: textStyle(
                                      color: Colors.black.withOpacity(0.5),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            //slider section end
            const Spacer(),
            //button start
            InkWell(
              onTap: () {
                Get.to(()=> const HomeView());
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.black,
                    border: Border.all(
                        width: 1, color: Colors.grey.withOpacity(0.5))),
                child: Row(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Let\'s get started!',
                          style: textStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 43,
                        width: 43,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color(0xffD1FD57),
                          border: Border.all(
                            width: .4,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 0,
                              blurRadius: 0,
                              offset: const Offset(0, 0),
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.keyboard_arrow_right_rounded,
                            color: Colors.black,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                  ],
                ),
              ),
            ),
            //button end
            const SizedBox(
              height: 5,
            ),
            //middle text section start
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account? ',
                    style: TextStyle(color: Colors.black.withOpacity(0.5))),
                IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Sign in',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ))
              ],
            ),
            //middle text section end
          ],
        ),
      ),
    );
  }
}
