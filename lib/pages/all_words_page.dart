import 'package:auto_size_text/auto_size_text.dart';
import 'package:english_app/models/english_today.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:like_button/like_button.dart';

import '../values/app_assets.dart';
import '../values/app_colors.dart';
import '../values/app_styles.dart';

class AllWordsPage extends StatelessWidget {
  final List<EnglishToday> words;

  const AllWordsPage({super.key, required this.words});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.secondColor,
          elevation: 0,
          title: Text(
            'English today',
            style:
                AppStyles.h3.copyWith(color: AppColors.textColor, fontSize: 36),
          ),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(AppAsssets.leftArrow),
          ),
        ),
        body: ListView.builder(
            itemCount: words.length,
            itemBuilder: (BuildContext context, index) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: (index % 2 == 0)
                        ? AppColors.primaryColor
                        : AppColors.secondColor,
                    borderRadius: const BorderRadius.all(Radius.circular(12))),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(16),
                  title: Text(
                    words[index].noun!,
                    style: (index % 2 == 0)
                        ? AppStyles.h4
                        : AppStyles.h4.copyWith(color: AppColors.textColor),
                  ),
                  subtitle: Text(words[index].quote ??
                      '"Think of all the beauty still left around you and be happy"'),
                  leading: Icon(
                    Icons.favorite,
                    color: words[index].isFavourite ? Colors.red : Colors.grey,
                  ),
                ),
              );
            }));
  }
}
