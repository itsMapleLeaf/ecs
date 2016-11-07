import 'component.dart';

class Entity {
  final components = <Type, Component>{};

  Entity(List<Component> componentList) {
    for (final comp in componentList) {
      components[comp.runtimeType] = comp;
    }
  }

  Component get(Type ComponentType) {
    return components[ComponentType];
  }

  bool has(List<Type> required) {
    return required
      .every((ComponentType) => components.containsKey(ComponentType));
  }

  Component operator [](Type ComponentType) {
    return get(ComponentType);
  }
}