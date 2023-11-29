import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/constants.dart';
import 'package:flutter_doctor_app/widgets/doctor_grid_view.dart';
import 'package:flutter_doctor_app/widgets/nav_bar.dart';
import 'package:flutter_doctor_app/widgets/top_doctors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 48, left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeScreenNavbar(),
                SizedBox(
                  height: 16,
                ),
                RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.headline1,
                      children: [
                        const TextSpan(text: "Find "),
                        TextSpan(
                            text: " your doctor",
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(color: kGreyColor900)),
                      ]),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: 56,
                  padding:
                      EdgeInsets.only(right: 8, left: 16, bottom: 5, top: 6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: kGreyColor500),
                  child: TextField(
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: kBlackColor800,
                        ),
                    cursorHeight: 24,
                    decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.search,
                          color: kBlackColor900,
                        ),
                        suffixIconConstraints: BoxConstraints(maxHeight: 24),
                        hintText: 'Search doctorr , medicines etc',
                        hintStyle: Theme.of(context).textTheme.headline5!,
                        contentPadding: EdgeInsets.only(bottom: 5),
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                DoctorAppGribMenu(),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top doctors",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      "View all",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: kBlueColor),
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                TopDoctorList(),
                SizedBox(
                  height: 64,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
