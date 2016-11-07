import 'dart:html';

import 'ecs/entity.dart';
import 'ecs/world.dart';

import 'components.dart';
import 'systems.dart';

createGameplayWorld() {
  return new World([
    new PhysicsSystem(),
    new DrawingSystem(),
  ]);
}

createPlayer() {
  return new Entity([
    new HasPosition(100, 100),
    new HasVelocity(10, 0),
    new IsDrawable(awesomePlayerImage),
  ]);
}

main() async {
  final world = createGameplayWorld()
    ..add(createPlayer());

  while (true) {
    world.step();
    await window.animationFrame;
  }
}