class HomeYourProjectModel {
  HomeYourProjectModel({
    required this.data,
  });
  late final List<Data> data;

  HomeYourProjectModel.fromJson(Map<String, dynamic> json) {
    data = List.from(json['data']).map((e) => Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.title,
    required this.member,
    required this.progressPercent,
    required this.totalChat,
    required this.publishDate,
  });
  late final int id;
  late final String title;
  late final Member member;
  late final int progressPercent;
  late final int totalChat;
  late final String publishDate;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    member = Member.fromJson(json['member']);
    progressPercent = json['progress_percent'];
    totalChat = json['total_chat'];
    publishDate = json['publish_date'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['title'] = title;
    _data['member'] = member.toJson();
    _data['progress_percent'] = progressPercent;
    _data['total_chat'] = totalChat;
    _data['publish_date'] = publishDate;
    return _data;
  }
}

class Member {
  Member({
    required this.totalMember,
    required this.threeMember,
  });
  late final int totalMember;
  late final List<ThreeMember> threeMember;

  Member.fromJson(Map<String, dynamic> json) {
    totalMember = json['total_member'];
    threeMember = List.from(json['three_member'])
        .map((e) => ThreeMember.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['total_member'] = totalMember;
    _data['three_member'] = threeMember.map((e) => e.toJson()).toList();
    return _data;
  }
}

class ThreeMember {
  ThreeMember({
    required this.id,
    required this.name,
  });
  late final int id;
  late final String name;

  ThreeMember.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    return _data;
  }
}
