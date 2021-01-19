import 'actions.dart';
import 'model/app_state.dart';

Appstate reducer(Appstate prevState, dynamic action) {
  Appstate newState = Appstate.fromAppState(prevState);
  if (action is MyUser) {
    newState.user = action.user;
  }
  return newState;
}
