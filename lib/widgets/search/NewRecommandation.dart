// ignore: file_names
import 'package:flutter/material.dart';

import '../../constraint/AppColors.dart';

class NewRecommandation extends StatelessWidget {
  const NewRecommandation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Recommandation"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          highlightColor: const Color(0xff4D6EFD).withOpacity(0.1),
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: AppColors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.30,
                    height: MediaQuery.sizeOf(context).width * 0.30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/news.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.70 - 30,
                    height: MediaQuery.sizeOf(context).width * 0.30,
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Charlize Theron Selling Los Angeles Bungalow",
                          style: Theme.of(context).textTheme.labelSmall,
                          textAlign: TextAlign.start,
                          softWrap: true,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "By John Doe",
                          style: Theme.of(context).textTheme.titleMedium,
                          textAlign: TextAlign.start,
                          softWrap: true,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        //row hava such as icon favorite, comment, ago
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.favorite_border_outlined,
                                  size: 20,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "1.2k",
                                  style: Theme.of(context).textTheme.titleSmall,
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.comment_outlined,
                                  size: 20,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "1.2k",
                                  style: Theme.of(context).textTheme.titleSmall,
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "1 min ago",
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
