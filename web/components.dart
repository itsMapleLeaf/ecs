import 'ecs/component.dart';

class Position implements Component {
  num x, y;
  Position(this.x, this.y);
}

class Drawable implements Component {
  Image image;
  Drawable(this.image);
}

class Velocity implements Component {
  num x, y;
  Velocity(this.x, this.y);
}