import 'package:powerbook/models.dart';

class RecommendedItem {
  final String name;
  final String description;
  final String link;

  RecommendedItem(
      {required this.name, required this.description, required this.link});
}

class RecommendedDistribution extends Content {
  List<RecommendedItem> expansions = [
    RecommendedItem(name: "TODO", description: "TODO", link: "https://to.do")
  ];
  List<RecommendedItem> supplements = [
    RecommendedItem(
        name: "Zarosh",
        description: "An expansive fantasy world governed by high magic.",
        link: "https://github.com/powerd6/zarosh")
  ];

  @override
  String toHtml() {
    return '${recommendedTable("Expansions", expansions)}'
        '${recommendedTable("Supplements", supplements)}';
  }

  String recommendedTable(String title, List<RecommendedItem> items) {
    return '<h2>$title</h2>'
        '<table>'
        '<thead>'
        '<tr>'
        '<th>Name</th>'
        '<th>Description</th>'
        '</tr>'
        '</thead>'
        '<tbody>${items.map(tableItem).join("")}</tbody>'
        '</table>';
  }

  String tableItem(e) => '<tr>'
      '<td>'
      '${Reference.external(link: e.link, text: e.name).toHtml()}'
      '</td>'
      '<td>${e.description}</td>'
      '</tr>';
}
