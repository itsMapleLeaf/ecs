import 'ecs/component.dart';

class HasPosition implements Component {
  num x, y;
  HasPosition(this.x, this.y);
}

class HasVelocity implements Component {
  num x, y;
  HasVelocity(this.x, this.y);
}

class IsDrawable implements Component {
  Image image;
  IsDrawable(this.image);
}