abstract class FailureAbstract {
  FailureAbstract([List properties = const <dynamic>[]]);
}

class ServerFailure implements FailureAbstract {}

class ConnectionFailure implements FailureAbstract {}