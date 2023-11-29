import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/models/doctor.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorAppGribMenu extends StatelessWidget {
  const DoctorAppGribMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 8,
        ),
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: doctorMenu.length,
        itemBuilder: (context, index) {
          return Container(
            constraints: BoxConstraints(maxHeight: 24),
            child: Column(
              children: [
                Container(
                  constraints: BoxConstraints(
                      minHeight: 56, minWidth: 56, maxHeight: 56, maxWidth: 56),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: SvgPicture.asset(
                    "assets/svg/${doctorMenu[index].image}",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Expanded(
                    child: Text(
                  doctorMenu[index].name,
                  style: Theme.of(context).textTheme.headline6,
                ))
              ],
            ),
          );
        });
  }
}
