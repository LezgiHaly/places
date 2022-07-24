import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class SightDetails extends StatelessWidget {
  const SightDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(
                'https://islam.ru/sites/default/files/1_9.jpg',
                width: double.infinity,
                height: 360,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 56),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    elevation: 0,
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: SvgPicture.asset(
                    'res/images/icons/ARROW.svg',
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              top: 24,
            ),
            child: Text(
              'Дербе́нтская кре́пость',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xFF3B3E5B),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2, left: 16),
            child: Row(
              children: [
                Text(
                  'крепость',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF3B3E5B),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: Text(
                    'закрыто до 9:00',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF7C7E92),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
            child: Text(
              'Часть оборонительной системы (Кавказская стена), защищавшей народы Закавказья и. Передней Азии от нашествий кочевников с севера в обход. Кавказских гор, вдоль побережья. Каспийского моря.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF3B3E5B),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF4CAF50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 67, bottom: 15),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'res/images/icons/Union.svg',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'ПОСТРОИТЬ МАРШРУТ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 16),
            child: SvgPicture.asset(
              'res/images/icons/Vector 95.svg',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 16, right: 16),
            child: Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.white,
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        size: 24,
                        color: Color(0x8C7C7E92),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Запланировать',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0x8C7C7E92),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'res/images/icons/favorite.svg',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'В Избранное',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF3B3E5B),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
