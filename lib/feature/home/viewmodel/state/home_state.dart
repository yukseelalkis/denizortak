import 'package:equatable/equatable.dart';
import 'package:gen/gen.dart';

final class HomeState extends Equatable {
  final WeatherModel? weatherModel;
  final bool isLoading;

  const HomeState({required this.isLoading, this.weatherModel});

  // Dinlemesi istedigimiz seyleri kullancaz
  @override
  List<Object?> get props => [weatherModel, isLoading];

  HomeState copyWith({bool? isLoading, WeatherModel? weatherModel}) {
    return HomeState(
      isLoading: isLoading ?? this.isLoading,
      weatherModel: weatherModel ?? this.weatherModel,
    );
  }
}
