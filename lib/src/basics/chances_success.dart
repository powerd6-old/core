import 'package:powerbook/models.dart';

class ChancesOfSuccessIntroduction extends Content {
  @override
  String toHtml() {
    return '<p>The percentages below consider partial and normal successes as valid.</p>';
  }
}

class ChancesOfSuccess extends Content {
  static const int minimumAttributeValue = -3;
  static const int maximumAttributeValue = 5;
  static const int maximumDifficulty = 12;

  List<int> attributeValueRange = List.generate(
      (minimumAttributeValue.abs() + maximumAttributeValue.abs()),
      (index) => minimumAttributeValue + index);

  List<int> difficultyRange =
      List.generate(maximumDifficulty, (index) => index + 1);

  String getProbabilityRows(int attributeValue, List<int> difficultyRange) {
    String result = "";
    for (var difficulty in difficultyRange) {
      double probability = (7 - (difficulty - attributeValue)) / 6;
      double clampedProbability =
          probability.clamp(0, 1); // Avoid more than 100% and less than 0%
      String displayProbability =
          "${(clampedProbability * 100).toStringAsFixed(0)}%";
      if (clampedProbability == 0) {
        result += '<td colspan="${1 + maximumDifficulty - difficulty}">'
            '$displayProbability'
            '</td>';
        break;
      } else {
        if (clampedProbability == 1) {
          if (difficulty == 1) {
            result += '<td colspan="${attributeValue + difficulty}">'
                '$displayProbability'
                '</td>';
          }
        } else {
          result += '<td>'
              '$displayProbability'
              '</td>';
        }
      }
    }
    return result;
  }

  @override
  String toHtml() {
    return '<table>'
        '<thead>'
        '<tr>'
        '<td></td>'
        '<th colspan="${attributeValueRange.length}">Difficulties</th>'
        '</tr>'
        '<tr>'
        '<th>Attribute Value</th>'
        '${difficultyRange.map((e) => "<th>$e</th>").join()}'
        '</tr>'
        '</thead>'
        '<tbody>'
        '${attributeValueRange.map(attributeRow).join()}'
        '</tbody>'
        '</table>';
  }

  String attributeRow(attributeValue) => '<tr>'
      '<th>$attributeValue</th>'
      '${getProbabilityRows(attributeValue, difficultyRange)}'
      '</tr>';
}
