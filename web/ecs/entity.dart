import 'component.dart';

class Entity {
  final components = <Type, Component>{};

  Entity(List<Component> components) {
    for (final comp in components) {
      this.components[comp.runtimeType] = comp;
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