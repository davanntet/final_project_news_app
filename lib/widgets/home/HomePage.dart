import 'package:final_project_news_app/constraint/AppColors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Hi Davann,",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                width: double.infinity,

                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Discover Treding\nNews",
                      style: Theme.of(context).textTheme.labelMedium,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(

                      width: MediaQuery.sizeOf(context).width * 0.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.blue.withOpacity(0.05),
                      ),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, '/detailhome');
                            },
                            child: Container(
                              height: MediaQuery.sizeOf(context).width *0.7 * 0.63,
                              width: MediaQuery.sizeOf(context).width * 0.7,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/news.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "The most popular news in the world",
                            style: Theme.of(context).textTheme.labelSmall,
                            textAlign: TextAlign.start,
                          ),
                          Row(
                            children: [
                              TextButton(
                                  onPressed: (){},
                                  child: Text("Treding",)
                              ),
                              SizedBox(width: 10,),
                              Text("1 min ago",style: Theme.of(context).textTheme.titleSmall,),
                              SizedBox(width: 10,),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 2,
                                    backgroundColor: AppColors.grey,
                                  ),
                                  Text("10 min read",style: Theme.of(context).textTheme.titleSmall,)
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              width: double.infinity,
              alignment: Alignment.topLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "For You",
                    style: Theme.of(context).textTheme.labelMedium,
                    textAlign: TextAlign.start,
                  ),
                  InkWell(
                    onTap: (){},
                      splashColor: AppColors.blue.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(100),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_forward,size: 25,),
                      )
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              width: double.infinity,
              height:0.75,
              color: AppColors.greyscale,
            ),
            SizedBox(
              height: 10,
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
                  SizedBox(width: 10,),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.70-30,
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
                        SizedBox(height: 5,),
                        Text(
                          "By John Doe",
                          style: Theme.of(context).textTheme.titleMedium,
                          textAlign: TextAlign.start,
                          softWrap: true,
                        ),
                        SizedBox(height: 5,),
                        //row hava such as icon favorite, comment, ago
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.favorite_border_outlined,size: 20,),
                                SizedBox(width: 5,),
                                Text("1.2k",style: Theme.of(context).textTheme.titleSmall,)
                              ],
                            ),
                            SizedBox(width: 10,),
                            Row(
                              children: [
                                Icon(Icons.comment_outlined,size: 20,),
                                SizedBox(width: 5,),
                                Text("1.2k",style: Theme.of(context).textTheme.titleSmall,)
                              ],
                            ),
                            SizedBox(width: 10,),
                            Text("1 min ago",style: Theme.of(context).textTheme.titleSmall,),
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
