import 'package:core/content/chapters/combat/critical.dart';
import 'package:core/content/chapters/combat/damage.dart';
import 'package:core/content/chapters/combat/health.dart';
import 'package:core/content/chapters/combat/introduction.dart';
import 'package:core/content/chapters/combat/turn_order.dart';
import 'package:core/content/chapters/rules.dart';
import 'package:powerbook/mixins.dart';
import 'package:powerbook/models.dart';

class CombatChapter {
  static final Chapter chapter =
      Chapter(heading: Heading(title: "Combat"), contents: [
    introduction,
    turnOrder,
    health,
    damage,
    critical,
  ]);

  static final Content introduction = Introduction();
  static final Content turnOrder = TurnOrder(RulesChapter.actions as Indexable);
  static final Content health = Health(critical as Indexable);
  static final Content damage = Damage();
  static final Content critical = Critical();
}
