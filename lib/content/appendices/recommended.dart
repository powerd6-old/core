import 'package:core/content/appendices/recommended/recommended_distribution.dart';
import 'package:powerbook/models.dart';

class RecommendedAppendix {
  static final Chapter chapter = Chapter(
      heading: Heading(title: "Recommended Expansions and Supplements"),
      contents: [recommendedContent]);
  static final RecommendedContent recommendedContent = RecommendedContent();
}
