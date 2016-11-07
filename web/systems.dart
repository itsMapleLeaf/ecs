import 'ecs/entity.dart';
import 'ecs/system.dart';

import 'components.dart';

class DrawingSystem implements System {
  final required = [Drawable, Position];

  void process(List<Entity> ents) {
    for (final ent in ents) {
      final image = ent[Drawable].image;
      final pos = ent[Position];
      image.draw(pos.x, pos.y);
    }
  }
}

class PhysicsSystem implements System {
  final required = [Position, Velocity];

  void process(List<Entity> ents) {
    for (final ent in ents) {
      final Position pos = ent[Position];
      final Velocity vel = ent[Velocity];
      pos.x += vel.x;
      pos.y += vel.y;
    }
  }
}
