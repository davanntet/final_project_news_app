class HomeOverviewResModel {
  late final List<HomeOverviewResModelData> data;

  HomeOverviewResModel.fromJson(Map<String, dynamic> json) {
    data = List.from(json['data'])
        .map((e) => HomeOverviewResModelData.fromJson(e))
        .toList();
  }
}

class HomeOverviewResModelData {
  final int id;
  final String type;
  final String iconUrl;
  final String title;
  final int totalTask;

  // fromJson constructor with initial value
  HomeOverviewResModelData.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        type = json['type'],
        iconUrl = json['iconUrl'],
        title = json['title'],
        totalTask = json['totalTask'];
}
