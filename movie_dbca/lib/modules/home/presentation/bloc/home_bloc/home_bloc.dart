import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_dbca/modules/home/domain/entities/movie_entity.dart';

import '../../../../../core/enums/enums.dart';
import '../../../../../core/error/error.dart';
import '../../../domain/usecases/movies_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@Injectable()
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetNowPlayingUsecase _getNowPlayingUsecase;

  HomeBloc({
    required GetNowPlayingUsecase getNowPlayingUsecase,
  })  : _getNowPlayingUsecase = getNowPlayingUsecase,
        super(HomeState.initial()) {
    on<_Started>(_started);
    on<_GetMovies>(_getMovies);
  }

  FutureOr<void> _started(_Started event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));
    emit(HomeState.initial());
    await _getMovies(_GetMovies(), emit);
  }

  FutureOr<void> _getMovies(_GetMovies event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));
    final either = await _getNowPlayingUsecase(
      '1',
    );
    either.fold(
      (failure) {
        emit(state.copyWith(
          failure: failure,
          isLoading: false,
          stateType: StateType.error,
        ));
      },
      (List<MovieEntity> movies) {
        emit(
          state.copyWith(
            isLoading: false,
            stateType: StateType.succes,
            movies: movies,
          ),
        );
      },
    );
  }
}
