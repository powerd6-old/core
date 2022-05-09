import 'package:core/content/appendices/recommended/recommended_item.dart';
import 'package:powerbook/models.dart';

class RecommendedContent extends Content {
  @override
  String toHtml() {
    return '${recommendedTable("Expansions", RecommendedItems.expansions)}'
        '${recommendedTable("Supplements", RecommendedItems.supplements)}';
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
