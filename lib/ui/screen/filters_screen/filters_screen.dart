import 'package:flutter/material.dart';
import 'package:places/domain/point.dart';
import 'package:places/domain/sight.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/res/styles.dart';
import 'package:places/ui/screen/filters_screen/filter_card.dart';
import 'package:places/ui/screen/filters_screen/widget/button_back.dart';
import 'package:places/ui/screen/filters_screen/widget/clear_button.dart';
import 'package:places/ui/screen/filters_screen/widget/range_slider.dart';
import 'package:places/ui/screen/filters_screen/widget/show_button.dart';

// Экран фильтров

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({Key? key}) : super(key: key);

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _radius = 0;
  List<Sight> _filterList = <Sight>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const ButtonBack(),
        actions: [
          ClearButton(
            onTap: () {
              for (final element in mocksFilter) {
                setState(() {
                  element.valueIsChek = false;
                });
              }
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 14,
            ),
            Text(
              AppStrings.category,
              style: AppTypography.textText12Regular.copyWith(
                color: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.color
                    ?.withOpacity(0.56),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Center(
              child: Wrap(
                spacing: 40,
                runSpacing: 40,
                children: mocksFilter
                    .map((filter) => FiltersCard(fielter: filter))
                    .toList(),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            RangeSlideWidget(
              onChanged: (radius) {
                setState(() {
                  _radius = radius;
                  _filterList = filterSight(_radius, mocks);
                });
              },
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: ShowButton(
                onTap: () {},
                placesCount: _filterList.length.toString(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
