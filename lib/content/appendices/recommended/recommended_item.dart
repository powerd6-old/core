class RecommendedItem {
  final String name;
  final String description;
  final String link;

  RecommendedItem(
      {required this.name, required this.description, required this.link});
}

class RecommendedItems {
  static final List<RecommendedItem> expansions = [
    RecommendedItem(name: "TODO", description: "TODO", link: "https://to.do")
  ];
  static final List<RecommendedItem> supplements = [
    RecommendedItem(
        name: "Zarosh",
        description: "An expansive fantasy world governed by high magic.",
        link: "https://github.com/powerd6/zarosh")
  ];
}
