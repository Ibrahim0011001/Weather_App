import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/cubits/weather_cubit/weather_cubit.dart';

class Searchpage extends StatelessWidget {
  const Searchpage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    String? Cityname;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search A City'),
        backgroundColor:
            BlocProvider.of<WeatherCubit>(context).weatherModel == null
                ? Colors.blue
                : BlocProvider.of<WeatherCubit>(context)
                    .weatherModel!
                    .getThemeColor(),
      ),
      body: Center(
        child: TextField(
          onChanged: (data) {
            Cityname = data;
          },
          onSubmitted: (data) {
            Cityname = data;
            BlocProvider.of<WeatherCubit>(context)
                .getwether(cityname: Cityname!);
            BlocProvider.of<WeatherCubit>(context).cityname = Cityname;
            Navigator.of(context).pop();
          },
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
              label: const Text('search'),
              hintText: 'Enter a city',
              border: const OutlineInputBorder(),
              suffixIcon: GestureDetector(
                onTap: () async {
                  BlocProvider.of<WeatherCubit>(context)
                      .getwether(cityname: Cityname!);
                  BlocProvider.of<WeatherCubit>(context).cityname = Cityname;
                  Navigator.of(context).pop();
                },
                child: const Icon(Icons.search),
              )),
        ),
      ),
    );
  }
}
