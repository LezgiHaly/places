import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/screen/sight_details_screen.dart';

class SightCard extends StatelessWidget {
  final Sight sight;

  SightCard({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFF5F5F5),
            borderRadius: BorderRadius.circular(15),
          ),
          width: 328,
          height: 188,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16)),
                    child: Image.network(
                      sight.url,
                      width: 328,
                      height: 94,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          top: 16,
                        ),
                        child: Text(
                          sight.type,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 19, right: 16),
                        child: SvgPicture.asset(
                          'res/images/icons/heart.svg',
                          width: 20,
                          height: 18,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SightDetails()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      elevation: 0,
                      primary: Color(0xFFF5F5F5)),
                  child: Text(
                    sight.name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF3B3E5B),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  bottom: 12,
                  right: 4,
                ),
                child: Text(
                  sight.details,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF7C7E92),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
