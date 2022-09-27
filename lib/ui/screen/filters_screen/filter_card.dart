import 'package:flutter/material.dart';
import 'package:places/domain/filter.dart';
import 'package:places/ui/res/styles.dart';
import 'package:places/ui/screen/filters_screen/widget/image.dart';
import 'package:places/ui/screen/filters_screen/widget/text_widget.dart';

// Карточка фильтра

class FiltersCard extends StatefulWidget {
  final Filter fielter;

  const FiltersCard({Key? key, required this.fielter}) : super(key: key);

  @override
  State<FiltersCard> createState() => _FiltersCardState();
}

class _FiltersCardState extends State<FiltersCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          splashColor: AppColors.colorDarkTheme,
          borderRadius: BorderRadius.circular(100),
          onTap: () {
            setState(() {
              widget.fielter.valueIsChek = !widget.fielter.valueIsChek;
            });
          },
          child: SizedBox(
            width: 75,
            height: 75,
            child: Stack(
              children: [
                // ignore: use_decorated_box
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: !widget.fielter.valueIsChek
                        ? Theme.of(context).backgroundColor
                        : Theme.of(context)
                            .bottomSheetTheme
                            .backgroundColor!
                            .withOpacity(0.08),
                  ),
                ),
                Center(
                  child: Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Theme.of(context)
                          .bottomSheetTheme
                          .backgroundColor!
                          .withOpacity(0.16),
                    ),
                    child: Center(
                      child: ImageCard(
                        fielter: widget.fielter,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 48, left: 48),
                  child: Checkbox(
                    side: BorderSide.none,
                    activeColor: AppColors.blackDark1,
                    shape: const CircleBorder(),
                    value: widget.fielter.valueIsChek,
                    onChanged: (currentValue) {
                      setState(() {
                        widget.fielter.valueIsChek = currentValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        TextWidget(
          filter: widget.fielter,
        ),
      ],
    );
  }
}
