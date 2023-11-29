import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/constants.dart';
import 'package:flutter_doctor_app/models/doctor.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TopDoctorsCard extends StatelessWidget {
  const TopDoctorsCard({Key? key, this.doctor}) : super(key: key);
  final Doctor? doctor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        color: Colors.transparent,
        height: 80,
        width: MediaQuery.of(context).size.width - 32,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 88,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/images/${doctor!.doctorPicture}",
                      ))),
            ),
            SizedBox(
              width: 16,
            ),
            Flexible(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctor!.doctorName,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  "${doctor!.doctorSpecialty} | ${doctor!.doctorSpecialty}",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.headline4,
                ),
                const Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 136,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          RatingBar.builder(
                            itemSize: 16,
                            initialRating: double.parse(doctor!.doctorRating),
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemPadding: EdgeInsets.zero,
                            itemBuilder: (context, _) {
                              return Icon(
                                Icons.star,
                                color: kYellowColor,
                              );
                            },
                            onRatingUpdate: (rating) {
                              debugPrint(rating.toString());
                            },
                            unratedColor: kGreyColor600,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text("(${doctor!.doctorNumberOfPatient})",
                              style: Theme.of(context).textTheme.bodyText2)
                        ],
                      ),
                      Container(
                        height: 24,
                        padding:
                            EdgeInsets.symmetric(horizontal: 13, vertical: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: doctor!.doctorIsOpen
                                ? kGreenLightColor
                                : kRedLightColor),
                        child: Text(
                          doctor!.doctorIsOpen ? "Open" : "Closed",
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                  color: doctor!.doctorIsOpen
                                      ? kGreenColor
                                      : kRedColor),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
