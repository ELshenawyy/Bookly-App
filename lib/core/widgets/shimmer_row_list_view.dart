
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerRowListView extends StatelessWidget {
  const ShimmerRowListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SizedBox(
            height: 125,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: AspectRatio(
                    aspectRatio: 2.6 / 4,
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey.shade300,
                      highlightColor: Colors.grey.shade100,
                      child: Container(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 30),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width:
                        MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.width * 0.078,
                        child: Shimmer.fromColors(
                          baseColor: Colors.grey.shade300,
                          highlightColor: Colors.grey.shade100,
                          child: const CustomLoadingBorder(),
                        ),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        width:
                        MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.height * 0.03,

                        child: Shimmer.fromColors(
                          baseColor: Colors.grey.shade300,
                          highlightColor: Colors.grey.shade100,
                          child: const CustomLoadingBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width:
                            MediaQuery.of(context).size.width * 0.18,
                            height: MediaQuery.of(context).size.width * 0.07,

                            child: Shimmer.fromColors(
                              baseColor: Colors.grey.shade300,
                              highlightColor: Colors.grey.shade100,
                              child: const CustomLoadingBorder(),
                            ),
                          ),
                          SizedBox(
                            width:
                            MediaQuery.of(context).size.width * 0.14,
                            height: MediaQuery.of(context).size.width * 0.07,

                            child: Shimmer.fromColors(
                              baseColor: Colors.grey.shade300,
                              highlightColor: Colors.grey.shade100,
                              child: const CustomLoadingBorder(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CustomLoadingBorder extends StatelessWidget {
  const CustomLoadingBorder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
