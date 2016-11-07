import 'ecs/entity.dart';
import 'ecs/system.dart';

import 'components.dart';

class DrawingSystem implements System {
  void process(List<Entity> ents) {
    for (final ent in ents.where((ent) => ent.has([IsDrawable, HasPosition]))) {
      final image = ent[IsDrawable].image;
      final pos = ent[HasPosition];
      image.draw(pos.x, pos.y);
    }
  }
}

class PhysicsSystem implements System {
  void process(List<Entity> ents) {
    for (final ent in ents.where((ent) => ent.has([HasPosition, HasVelocity]))) {
      final HasPosition pos = ent[HasPosition];
      final HasVelocity vel = ent[HasVelocity];
      pos.x += vel.x;
      pos.y += vel.y;
    }
  }
}
