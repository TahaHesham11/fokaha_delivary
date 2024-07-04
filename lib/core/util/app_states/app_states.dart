enum AppState {
  init,
  success,
  error,
  loading,
  failed,
}

class AppStates {
  AppState _currentState = AppState.init;

  bool isState(AppState state) => _currentState == state;

  void setState(AppState state) => _currentState = state;

  void setInit() => setState(AppState.init);

  void setSuccess() => setState(AppState.success);

  void setError() => setState(AppState.error);

  void setLoading() => setState(AppState.loading);

  void setFailed() => setState(AppState.failed);
}
