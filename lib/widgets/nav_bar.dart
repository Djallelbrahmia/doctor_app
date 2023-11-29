import 'package:flutter/material.dart';
import 'package:flutter_doctor_app/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class HomeScreenNavbar extends StatelessWidget {
  const HomeScreenNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 24,
          width: 24,
          child: SvgPicture.asset(
            "assets/svg/icon-burger.svg",
          ),
        ),
        const Spacer(),
        const SizedBox(
          width: 36,
          height: 36,
          child: CircleAvatar(
            backgroundColor: kBlueColor,
            backgroundImage: NetworkImage(
                "https://scontent.falg3-2.fna.fbcdn.net/v/t39.30808-6/321984446_5440838976021496_6003640935244597071_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeFGXRF07kVGNWFryKamL7EwNPHLBQhu8hU08csFCG7yFYmfQFe0s5IxKnKsTvLk-GhustTRSouoMsEpltzhR016&_nc_ohc=UwMJVEbEtk4AX-eZfxa&_nc_zt=23&_nc_ht=scontent.falg3-2.fna&oh=00_AfBkLuPKaPvXwtGTKqvjLW4zUSSNyBbO-GhiOUjxZukE7Q&oe=656B684C"),
          ),
        )
      ],
    );
  }
}
