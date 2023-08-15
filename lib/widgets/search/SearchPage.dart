import 'package:flutter/material.dart';

import '../../constraint/AppColors.dart';
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search News",
                  hintStyle: Theme.of(context).textTheme.titleLarge,

                  prefixIcon: Icon(Icons.search,size: 35,color: AppColors.grey,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: AppColors.greywhite.withOpacity(0.5),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              alignment: Alignment.centerLeft,
              child: Text("Popular Tags",style: Theme.of(context).textTheme.labelSmall,),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  spacing: 10,
                  runSpacing: 0,
                  children: [
                    Chip(
                      label: Text("Sports",style: Theme.of(context).textTheme.displaySmall,),
                      backgroundColor: AppColors.white,
                    ),
                    Chip(
                      label: Text("Politics",style: Theme.of(context).textTheme.displaySmall,),
                      backgroundColor: AppColors.white,
                    ),
                    Chip(
                      label: Text("Business",style: Theme.of(context).textTheme.displaySmall,),
                      backgroundColor: AppColors.white,
                    ),
                    Chip(
                      label: Text("Entertainment",style: Theme.of(context).textTheme.displaySmall,),
                      backgroundColor: AppColors.white,
                    ),
                    Chip(
                      label: Text("Technology",style: Theme.of(context).textTheme.displaySmall,),
                      backgroundColor: AppColors.white,
                    ),
                    Chip(
                      label: Text("Health",style: Theme.of(context).textTheme.displaySmall,),
                      backgroundColor: AppColors.white,
                    ),
                    Chip(
                      label: Text("Science",style: Theme.of(context).textTheme.displaySmall,),
                      backgroundColor: AppColors.white,
                    ),
                    Chip(
                      label: Text("Education",style: Theme.of(context).textTheme.displaySmall,),
                      backgroundColor: AppColors.white,
                    ),
                    Chip(
                      label: Text("Travel",style: Theme.of(context).textTheme.displaySmall,),
                      backgroundColor: AppColors.white,
                    ),
                    Chip(
                      label: Text("Food",style: Theme.of(context).textTheme.displaySmall,),
                      backgroundColor: AppColors.white,
                    ),
                    Chip(
                      label: Text("Weather",style: Theme.of(context).textTheme.displaySmall,),
                      backgroundColor: AppColors.white,
                    ),
                    Chip(
                      label: Text("World",style: Theme.of(context).textTheme.displaySmall,),
                      backgroundColor: AppColors.white,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              width: double.infinity,
              alignment: Alignment.topLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Treding Topic",
                    style: Theme.of(context).textTheme.labelSmall,
                    textAlign: TextAlign.start,
                  ),
                  InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, '/trendingtopic');
                      },
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
            //show profile and name such as KDrama,Bitcoin,Movie,Game,Trailer
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('assets/images/profile.png'),
                            ),
                            Text("KDrama",style: Theme.of(context).textTheme.displaySmall,),
                          ],
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('assets/images/profile.png'),
                            ),
                            Text("KDrama",style: Theme.of(context).textTheme.displaySmall,),
                          ],
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('assets/images/profile.png'),
                            ),
                            Text("KDrama",style: Theme.of(context).textTheme.displaySmall,),
                          ],
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('assets/images/profile.png'),
                            ),
                            Text("KDrama",style: Theme.of(context).textTheme.displaySmall,),
                          ],
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('assets/images/profile.png'),
                            ),
                            Text("KDrama",style: Theme.of(context).textTheme.displaySmall,),
                          ],
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('assets/images/profile.png'),
                            ),
                            Text("KDrama",style: Theme.of(context).textTheme.displaySmall,),
                          ],
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('assets/images/profile.png'),
                            ),
                            Text("KDrama",style: Theme.of(context).textTheme.displaySmall,),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              width: double.infinity,
              alignment: Alignment.topLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "News Recommendations",
                    style: Theme.of(context).textTheme.labelSmall,
                    textAlign: TextAlign.start,
                  ),
                  InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, '/recommandation');
                      },
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
            ),
          ],
        ),
      ),
    );
  }
}

void SearchMethod(BuildContext context){
  showModalBottomSheet(
      context: context,
    builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
            ),
            title: Container(
              width: MediaQuery.sizeOf(context).width * 0.80,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: Theme.of(context).textTheme.titleSmall,
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
        );
    }

  );
}