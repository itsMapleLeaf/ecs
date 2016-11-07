import 'entity.dart';
import 'system.dart';

class World {
  final List<Entity> entities = [];
  final List<System> systems;

  World(this.systems);

  Entity add(ent) {
    entities.add(ent);
    return ent;
  }

  Entity remove(ent) {
    entities.remove(ent);
    return ent;
  }

  void clear() {
    entities.clear();
  }

  void step() {
    for (final system in systems) {
      system.process(entities);
    }
  }
}
