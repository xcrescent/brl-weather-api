import 'package:flutter/material.dart';
import 'package:weather/controller/http_controller.dart';
import 'package:weather/models/queryModel.dart';

class WeatherHome extends StatefulWidget {
  const WeatherHome({super.key});

  @override
  State<WeatherHome> createState() => _WeatherHomeState();
}

class _WeatherHomeState extends State<WeatherHome> {
  bool isLoading = true;
  late Future<WeatherQueryModel> futurestock;

  @override
  void initState() {
    super.initState();
    futurestock = HttpController().fetchWeather() as Future<WeatherQueryModel>;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            FutureBuilder<WeatherQueryModel>(
              future: Future<HttpController().fetchWeather()>,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data!.title);
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              },
            )
          ],
        ),
      ),
    );
  }
}
