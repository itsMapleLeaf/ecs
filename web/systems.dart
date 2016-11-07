import 'ecs/entity.dart';
import 'ecs/system.dart';

import 'components.dart';

class DrawingSystem implements System {
  void process(List<Entity> ents) {
    for (final ent in ents.where((ent) => ent.has([Drawable, Position]))) {
      final image = ent[Drawable].image;
      final pos = ent[Position];
      image.draw(pos.x, pos.y);
    }
  }
}

class PhysicsSystem implements System {
  void process(List<Entity> ents) {
    for (final ent in ents.where((ent) => ent.has([Position, Velocity]))) {
      final Position pos = ent[Position];
      final Velocity vel = ent[Velocity];
      pos.x += vel.x;
      pos.y += vel.y;
    }
  }
}
