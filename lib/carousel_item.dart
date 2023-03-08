import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CarouselItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String charges;

  const CarouselItem(
      {Key? key,
      required this.title,
      required this.imageUrl,
      required this.charges})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      color: Colors.transparent,
      child: Stack(children: [
        Container(
          // alignment: Alignment.center,
          height: size.height*0.75,
            margin: EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
              color: const Color(0xffBE2232),
              borderRadius: BorderRadius.circular(20),
            )),
        Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset("assets/wasp.svg"),
                Column(
                  children:  [
                    const Text(
                      "FLEA",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 45),
                    ),
                    Column(
                      children: const[
                        Text(
                          "\$9",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 45),
                        ),
                        Text(
                          "/month",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            const Divider(
              color: Colors.black,
              height: 0,
              thickness: 2,
              // indent: 5,
              // endIndent: 5,
            ),
            // SizedBox(height: 15,),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.,
              children: [
                Stack(
                  children: [
                    SvgPicture.asset("assets/featured.svg"),
                  ],
                  //TODO add sticker
                ),
                Column(
                  children: const [
                    Text(
                      "Featured on    ",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 22),
                    ),
                    Text("the Homepage",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 22),),
                  ],
                )
              ],
            ),
            // SizedBox(height: 10,),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    SvgPicture.asset("assets/newsletter.svg"),
                  ],
                  //TODO add sticker
                ),
                Column(
                  children: const [
                    Text("Featured in     ",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 22),),
                    Text("the Newsletter",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 22),),
                  ],
                )
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    SvgPicture.asset("assets/sponsorship.svg"),
                  ],
                  //TODO add sticker
                ),
                Column(
                  children: const [
                    Text("Leaderboard ",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 22),),
                    Text("Sponsorship",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 22),),
                  ],
                )
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    SvgPicture.asset("assets/bughunt.svg"),
                  ],
                  //TODO add sticker
                ),
                Column(
                  children: const [
                    Text("Monthly bug ",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 22),),
                    Text("Hunt Credits",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 22),),
                  ],
                )
              ],
            ),
            const Spacer(),
            OutlinedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green)),
              onPressed: () {},
              child: const Text("Get Started",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24),),
            ),
          ],
        )
      ]),
    );
  }
}
