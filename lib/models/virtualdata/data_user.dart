// ignore: camel_case_types
class data_user {
  static List<user_data_form> datas = [

    //generate different user 10 times
    user_data_form(
      name: 'Alice AD',
      bio: 'Nothing to say!',
      image: 'assets/homes/img_0.png',
      follower: 100,
      following: 100,
    ),
    user_data_form(
      name: 'Layla Love',
      bio: 'Nothing to say!',
      image: 'assets/homes/img_1.png',
      follower: 100,
      following: 100,
    ),
    user_data_form(
      name: 'Alucard AD',
      bio: 'Nothing to say!',
      image: 'assets/homes/img_2.png',
      follower: 100,
      following: 100,
    ),
    user_data_form(
      name: 'Kimmy KY',
      bio: 'Nothing to say!',
      image: 'assets/homes/img_3.png',
      follower: 100,
      following: 100,
    ),
    user_data_form(
      name: 'Argus AG',
      bio: 'Nothing to say!',
      image: 'assets/homes/img_4.png',
      follower: 100,
      following: 100,
    ),
    user_data_form(
      name: 'Edora ED',
      bio: 'Nothing to say!',
      image: 'assets/homes/img_5.png',
      follower: 100,
      following: 100,
    ),
    user_data_form(
      name: 'Lancelot LT',
      bio: 'Nothing to say!',
      image: 'assets/homes/img_6.png',
      follower: 100,
      following: 100,
    ),
    user_data_form(
      name: 'Odette OD',
      bio: 'Nothing to say!',
      image: 'assets/homes/img.png',
      follower: 100,
      following: 100,
    ),
    
  ];
}

// ignore: camel_case_types
class user_data_form {
  final String name;
  final String bio;
  final String image;
  final int follower;
  final int following;

  user_data_form({
    required this.name,
    required this.bio,
    required this.image,
    required this.follower,
    required this.following,
  });
}
