import 'package:final_project_news_app/constraint/AppColors.dart';
import 'package:flutter/material.dart';

class DetailHomePage extends StatelessWidget {
  const DetailHomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:Stack(
        children: [

          SingleChildScrollView(
            child: Stack(
              children: [
                //background
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/auth1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                //article
            Container(
                  margin: const EdgeInsets.only(top: 230),
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //tag
                      TextButton(
                        onPressed: (){},
                        child: Text(
                          'UI Design',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.blue,
                          ),
                        ),
                      ),
                      Text(
                        'How to make a good UI design',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10,),
                      //author profile and date
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Row(
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundImage: AssetImage('assets/images/profile.png'),
                              ),
                              SizedBox(width: 10,),
                              Text(
                                'Davann Tet',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Jan 20, 2021',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, diam id aliquam ultrices, nisl nunc aliquet enim, vitae aliquam nisl nunc a nisl. Sed euismod, diam id aliquam ultrices, nisl nunc aliquet enim, vitae aliquam nisl nunc a nisl.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, diam id aliquam ultrices, nisl nunc aliquet enim, vitae aliquam nisl nunc a nisl. Sed euismod, diam id aliquam ultrices, nisl nunc aliquet enim, vitae aliquam nisl nunc a nisl.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, diam id aliquam ultrices, nisl nunc aliquet enim, vitae aliquam nisl nunc a nisl. Sed euismod, diam id aliquam ultrices, nisl nunc aliquet enim, vitae aliquam nisl nunc a nisl.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, diam id aliquam ultrices, nisl nunc aliquet enim, vitae aliquam nisl nunc a nisl. Sed euismod, diam id aliquam ultrices, nisl nunc aliquet enim, vitae aliquam nisl nunca nisl.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                  ],
                  ),
                  ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.only(left:5,top: 5),
            alignment: Alignment.bottomLeft,
            height: 60,
            color: Colors.transparent,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              highlightColor: AppColors.blue.withOpacity(0.1),
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 25,
                color:AppColors.grey,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        //textfield to command and favorit,bookmark,share
        child: Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.comment,
                  color: AppColors.grey,
                ),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.favorite_border,
                  color: AppColors.grey,
                ),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.bookmark_border,
                  color: AppColors.grey,
                ),
              ),
              InkWell(
                onTap: () { shareMethod(context); },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.share,
                    color: AppColors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}

void shareMethod(BuildContext context){
  //show share method as snackbar have stories,whatapp,facebook,twitter,line,link copy,more
  final double wdth = MediaQuery.of(context).size.width/4-5;
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          height: wdth*3,
          child: Column(
            children: [
              const SizedBox(height: 15,),
              Container(
                height: 3,
                width: 75,
                decoration: BoxDecoration(
                  color: AppColors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 10,),
              Text(
                'Share Article',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Wrap(
                  children: [
                    Container(
                      height: wdth,
                      width: wdth,
                      child: Column(
                        children: [
                         CircleAvatar(
                            radius: wdth/4,
                            backgroundImage: AssetImage('assets/icons/stories.png'),
                         ),
                          const SizedBox(height: 10,),
                          Text(
                            'Stories',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: wdth,
                      width: wdth,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: wdth/4,
                            backgroundImage: AssetImage('assets/icons/whatapp.png'),
                          ),
                          const SizedBox(height: 10,),
                          Text(
                            'Whatapp',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: wdth,
                      width: wdth,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: wdth/4,
                            backgroundImage: AssetImage('assets/icons/facebook.png'),
                          ),
                          const SizedBox(height: 10,),
                          Text(
                            'Facebook',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: wdth,
                      width: wdth,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: wdth/4,
                            backgroundImage: AssetImage('assets/icons/twitter.png'),
                          ),
                          const SizedBox(height: 10,),
                          Text(
                            'Twitter',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: wdth,
                      width: wdth,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: wdth/4,
                            backgroundImage: AssetImage('assets/icons/line.png'),
                          ),
                          const SizedBox(height: 10,),
                          Text(
                            'Line',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: wdth,
                      width: wdth,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: wdth/4,
                            backgroundImage: AssetImage('assets/icons/copy.png'),
                          ),
                          const SizedBox(height: 10,),
                          Text(
                            'Copy',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: wdth,
                      width: wdth,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: wdth/4,
                            backgroundImage: AssetImage('assets/icons/more.png'),
                          ),
                          const SizedBox(height: 10,),
                          Text(
                            'More',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      }
  );

}