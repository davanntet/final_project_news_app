class data_info {
  static List<data_info_form> data_info_list = [
    data_info_form(
      image: 'assets/homes/img_1.png',
      title: 'The best way to learn',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, diam id tincidunt dapibus, elit arcu tincidunt arcu, id lacinia velit nisl eget nunc. ',
      category: 'Education',
      date: '12/12/2021',
      time: '1min ago',
      time_read: '5 min read',
      favorite: 100,
      comment: 100,
    ),
    data_info_form(
      image: 'assets/homes/img_2.png',
      title: 'The best way to learn',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, diam id tincidunt dapibus, elit arcu tincidunt arcu, id lacinia velit nisl eget nunc. ',
      category: 'Education',
      date: '12/12/2021',
      time: '4 min ago',
      time_read: '5 min read',
      favorite: 100,
      comment: 100,
    ),
    data_info_form(
      image: 'assets/homes/img_3.png',
      title: 'The best way to learn',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, diam id tincidunt dapibus, elit arcu tincidunt arcu, id lacinia velit nisl eget nunc. ',
      category: 'Education',
      date: '12/12/2021',
      time: '34 min ago',
      time_read: '5 min read',
      favorite: 100,
      comment: 100,
    ),
    data_info_form(
      image: 'assets/homes/img_4.png',
      title: 'The best way to learn',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, diam id tincidunt dapibus, elit arcu tincidunt arcu, id lacinia velit nisl eget nunc. ',
      category: 'Education',
      date: '12/12/2021',
      time: '51 min ago',
      time_read: '5 min read',
      favorite: 100,
      comment: 100,
    ),
    data_info_form(
      image: 'assets/homes/img_5.png',
      title: 'The best way to learn',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, diam id tincidunt dapibus, elit arcu tincidunt arcu, id lacinia velit nisl eget nunc. ',
      category: 'Education',
      date: '12/12/2021',
      time: '5 min ago',
      time_read: '5 min read',
      favorite: 100,
      comment: 100,
    ),
    data_info_form(
      image: 'assets/homes/img_6.png',
      title: 'The best way to learn',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, diam id tincidunt dapibus, elit arcu tincidunt arcu, id lacinia velit nisl eget nunc. ',
      category: 'Education',
      date: '12/12/2021',
      time: '1 hour ago',
      time_read: '5 min read',
      favorite: 100,
      comment: 100,
    ),
    data_info_form(
      image: 'assets/homes/img_7.png',
      title: 'The best way to learn',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, diam id tincidunt dapibus, elit arcu tincidunt arcu, id lacinia velit nisl eget nunc. ',
      category: 'Education',
      date: '12/12/2021',
      time: '1 hour ago',
      time_read: '5 min read',
      favorite: 100,
      comment: 100,
    ),
    data_info_form(
      image: 'assets/homes/img_8.png',
      title: 'The best way to learn',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, diam id tincidunt dapibus, elit arcu tincidunt arcu, id lacinia velit nisl eget nunc. ',
      category: 'Education',
      date: '12/12/2021',
      time: '1 hour ago',
      time_read: '5 min read',
      favorite: 100,
      comment: 100,
    ),
    data_info_form(
      image: 'assets/homes/img_9.png',
      title: 'The best way to learn',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, diam id tincidunt dapibus, elit arcu tincidunt arcu, id lacinia velit nisl eget nunc. ',
      category: 'Education',
      date: '12/12/2021',
      time: '1 hour ago',
      time_read: '5 min read',
      favorite: 100,
      comment: 100,
    ),
    data_info_form(
      image: 'assets/homes/img_10.png',
      title: 'The best way to learn',
      description:
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, diam id tincidunt dapibus, elit arcu tincidunt arcu, id lacinia velit nisl eget nunc. ',
      category: 'Education',
      date: '12/12/2021',
      time: '1 hour ago',
      time_read: '5 min read',
      favorite: 100,
      comment: 100,
    ),
  ];
}

class data_info_form {
  final String image;
  final String title;
  final String description;
  final String category;
  final String time;
  final String time_read;
  final int favorite;
  final int comment;
  final String date;
  data_info_form({
    required this.image,
    required this.title,
    required this.description,
    required this.category,
    required this.date,
    required this.time,
    required this.time_read,
    required this.favorite,
    required this.comment,
  });
}
