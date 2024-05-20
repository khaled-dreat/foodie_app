import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodie_app/utils/constant/app_firebase_key.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_text_style.dart';

class RecentKeywordsWidget extends StatelessWidget {
  const RecentKeywordsWidget({
    super.key,
    required this.recentKeywords,
  });

  final List<String> recentKeywords;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recent Keywords",
          style: AppTextStyle.styleRegular13(context)
              .copyWith(fontSize: 20, color: AppColors.darkBlue),
        ),
        SizedBox(
          height: 10,
        ),
        StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection(AppFirebaseKey.foodModels)
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text("Loading");
            }
            return ListView.builder(
              itemCount: snapshot.data?.docs.length,
              itemBuilder: (context, index) {
                var data = snapshot.data?.docs[index];
                return Container(
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.silver,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(25)),
                  child: Text(data![AppFirebaseKey.name]),
                );
              },
            );
          },
        )
      ],
    );
  }
}
