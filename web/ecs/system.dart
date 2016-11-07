import 'entity.dart';

abstract class System {
  void process(List<Entity> ents);
}
