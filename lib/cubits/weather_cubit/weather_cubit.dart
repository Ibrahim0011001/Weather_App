import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/weather_cubit/weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());
}
