import 'package:cached_network_image/cached_network_image.dart';
import 'package:clinics/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacehelper.dart';
import '../../../../core/theming/styles.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorModel;
  const DoctorsListViewItem({super.key, required this.doctorModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          CachedNetworkImage(
              imageUrl:
                  "https://r2.erweima.ai/imgcompressed/img/compressed_11c311bea4fccd5ae6b9e8091f4a9fa1.webp",
              progressIndicatorBuilder: (context, url, progress) =>
                  const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(
                    Icons.error,
                  )),
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(24),
          //   child: Image.network(
          //     width: 110.w,
          //     height: 120.h,
          //     "https://r2.erweima.ai/imgcompressed/img/compressed_11c311bea4fccd5ae6b9e8091f4a9fa1.webp",
          //     fit: BoxFit.cover,
          //   ),
          // ),
          horizontalspace(16),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                doctorModel?.name ?? 'name',
                style: TextStyles.font18DarkBlueBold,
                overflow: TextOverflow.ellipsis,
              ),
              verticalspace(5),
              Text(
                // "Degree | 05247764",
                "${doctorModel?.degree} | ${doctorModel?.phone}",
                style: TextStyles.font12GrayMedium,
              ),
              verticalspace(5),
              Text(
                // "Email@gmail.com",
                doctorModel?.email ?? 'Email',
                style: TextStyles.font12GrayMedium,
              )
            ],
          ))
        ],
      ),
    );
  }
}
