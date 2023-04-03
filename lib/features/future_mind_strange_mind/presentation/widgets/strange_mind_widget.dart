// ignore_for_file: prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fm_rek/core/navigation/router.gr.dart';
import 'package:fm_rek/features/future_mind_strange_mind/domain/entities/strange_mind_entity.dart';
import 'package:intl/intl.dart';

import '../../../../core/widgets/network_image_with_refresh.dart';
import '../../../../core/widgets/rounded_border_container_widget.dart';

class StrangeMindWidget extends StatelessWidget {
  const StrangeMindWidget({Key? key, required this.strangeMind})
      : super(key: key);

  final StrangeMindEntity strangeMind;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushRoute(
          StrangeMindDetailRoute(detailsUrl: strangeMind.detailsUrl),
        );
      },
      child: RoundedBorderContainerWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Title: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: strangeMind.title),
                ],
              ),
            ),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Description: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: strangeMind.description),
                ],
              ),
            ),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Modification date: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: DateFormat('dd.MM.yyyy hh:mm')
                        .format(strangeMind.modificationDate),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            NetworkImageWithRefresh(
              url: strangeMind.imageUrl,
            ),
          ],
        ),
      ),
    );
  }
}
