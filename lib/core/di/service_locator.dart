class ServiceLocator {
  static ServiceLocator? _instance;

  static ServiceLocator get instance => _instance ??= ServiceLocator._();

  ServiceLocator._();

  final Map<Type, Object> _map = {};

  T read<T extends Object>() {
    final value = _map[T];

    if (value == null) {
      throw Exception('ServiceLocator found null');
    }

    return (value as T);
  }

  void register<T extends Object>(T value) {
    _map[T] = value;
  }
}
