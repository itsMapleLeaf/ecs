import 'dart:html';

import 'ecs/entity.dart';
import 'ecs/world.dart';

import 'components.dart';
import 'systems.dart';

World createGameplayWorld() {
  return new World([
    new PhysicsSystem(),
    new DrawingSystem(),
  ]);
}

Entity createPlayer() {
  return new Entity([[
    new Position(100, 100),
    new Velocity(10, 0),
    new Drawable(awesomePlayerImage),
  ]]);
}

main() async {
  final world = createGameplayWorld()
    ..add(createPlayer());

  while (true) {
    world.step();
    await window.animationFrame;
  }
}