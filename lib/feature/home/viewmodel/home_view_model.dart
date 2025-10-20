import 'package:weather_app/feature/home/viewmodel/state/home_state.dart';
import 'package:weather_app/product/state/base/base_cubit.dart';

final class HomeViewModel extends BaseCubit<HomeState> {
  HomeViewModel() : super(HomeState(isLoading: false));
  void changeLoading() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }
}
