import 'package:core/src/introduction/recommended_distribution.dart';
import 'package:powerbook/models.dart';

class RecommendedAppendix {
  static final Chapter chapter = Chapter(
      heading: Heading(title: "Recommended Expansions and Supplements"),
      contents: [recommendedDistribution]);
  static final RecommendedDistribution recommendedDistribution =
      RecommendedDistribution();
}
