import 'entity.dart';

abstract class System {
  List<Type> get required;
  void process(List<Entity> ents);
}
