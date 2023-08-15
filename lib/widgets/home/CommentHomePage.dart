import 'package:final_project_news_app/constraint/AppColors.dart';
import 'package:flutter/material.dart';
class CommentHomePage extends StatefulWidget {
  const CommentHomePage({super.key});

  @override
  State<CommentHomePage> createState() => _CommentHomePageState();
}

class _CommentHomePageState extends State<CommentHomePage> {
  final _commentController = TextEditingController();
  bool _isComment = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //use keyboard listener


    _commentController.addListener(() {
      setState(() {
        _isComment = _commentController.text.isNotEmpty;
      });
    });


  }
  @override
  void dispose() {
    // TODO: implement dispose
    _commentController.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          highlightColor: const Color(0xff4D6EFD).withOpacity(0.1),
          icon: const Icon(
            Icons.arrow_back,
            size: 25,
            color: AppColors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: TextButton(
                    onPressed: (){},
                    child: Text("Sports",textAlign: TextAlign.start,style: Theme.of(context).textTheme.headlineMedium)
                ),
              ),
              SizedBox(height: 10,),
              Container(
                child: Text(
                    "Lewandowski tipped for Ballon d'Or as Messi eyes seventh prize",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/profile.png'),
                      ),
                      SizedBox(width: 10,),

                      Text(
                        'Davann Tet',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: AppColors.grey,
                      ),
                      SizedBox(width: 10,),
                      Text(
                        'Jan 20, 2021',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30,),
              //comment number
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Comments',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  SizedBox(width: 5,),
                  Text(
                    '(12)',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                color: AppColors.greyscale,
                width: double.infinity,
                height: 1,
              ),
              SizedBox(height: 10,),
              //comment
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/profile.png'),
                      ),
                      SizedBox(width: 10,),
                      Row(
                        children: [
                          Text(
                            'Davann Tet',
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              CircleAvatar(
                                radius: 3,
                                backgroundColor: AppColors.grey,
                              ),
                              SizedBox(width: 10,),
                              Text(
                                '10 mins ago',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 10,),

                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width-30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        SizedBox(height: 5,),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.supergrey,
                          ),
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                  //Like,Reply,Report
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.thumb_up_alt_outlined,size: 20,color: AppColors.greyscale,),
                          SizedBox(width: 5,),
                          Text(
                            'Like',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                      SizedBox(width: 20,),
                      Row(
                        children: [
                          Icon(Icons.reply_outlined,size: 20,color: AppColors.greyscale,),
                          SizedBox(width: 5,),
                          Text(
                            'Reply',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                      SizedBox(width: 20,),
                      Row(
                        children: [
                          Icon(Icons.report_outlined,size: 20,color: AppColors.greyscale,),
                          SizedBox(width: 5,),
                          Text(
                            'Report',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: _isComment? 500:60,
        child: Container(
          height: 60,
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width-100,
                child: TextField(
                  controller: _commentController,
                  decoration: InputDecoration(
                    hintText: 'Write a comment...',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: AppColors.supergrey,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(Icons.camera_alt_outlined,size: 25,color: AppColors.greyscale,),
                  SizedBox(width: 20,),
                  Icon(Icons.send_outlined,size: 25,color: AppColors.greyscale,),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
