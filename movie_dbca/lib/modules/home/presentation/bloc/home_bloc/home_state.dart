part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  HomeState._();

  factory HomeState({
    Failure? failure,
    required bool isLoading,
    required List<MovieEntity> movies,
    required StateType stateType,
  }) = _Initial;

  factory HomeState.initial() => HomeState(
        isLoading: false,
        movies: [],
        stateType: StateType.none,
      );
}
