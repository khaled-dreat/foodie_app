import 'package:flutter/material.dart';

import '../../constant/app_image.dart';
import '../loading/app_loading.dart';

class ImageProfile extends StatelessWidget {
  const ImageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image(
        height: 40,
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
    );
  }
}
