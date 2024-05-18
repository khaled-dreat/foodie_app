import 'package:flutter/material.dart';
import 'package:foodie_app/utils/route/app_route.dart';

import '../../../features/profile/presentation/pages/profile_view.dart';
import '../../constant/app_image.dart';
import '../loading/app_loading.dart';

class ImageProfile extends StatelessWidget {
  const ImageProfile({super.key, this.height});
  final double? height;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppRoute.go(context, ProfileView.nameRoute);
      },
      child: ClipOval(
        child: Image(
          height: height ?? 40,
          image: const NetworkImage(
              "https://www.upwork.com/profile-portraits/c1omXvA02zZEGdCF4IZ5XofBUJ1xqhzdhCztiABT7h5Sggh_2vOyt46gOs6UfftAQ9"),
          errorBuilder: (context, error, stackTrace) => const Image(
            image: AssetImage(Assets.svgAccount),
          ),
          loadingBuilder: (context, child, loadingProgress) {
            return loadingProgress == null
                ? child
                : const Center(
                    child: AppLoading(loading: TypeLoading.profile),
                  );
          },
        ),
      ),
    );
  }
}
