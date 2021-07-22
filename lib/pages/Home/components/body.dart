import 'package:api_movie/pages/Detail/detailscreen.dart';
import 'package:api_movie/widget/tvairingtoday.dart';
import 'package:api_movie/widget/toprated.dart';
import 'package:api_movie/widget/trending.dart';
import 'package:api_movie/widget/tv.dart';
import 'package:api_movie/widget/upcoming.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final String apikey = '6a0cc9a60becfce662345daa7adebcec';
  final String readaccesstoken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2YTBjYzlhNjBiZWNmY2U2NjIzNDVkYWE3YWRlYmNlYyIsInN1YiI6IjYwZjc5OWY2ZTcyZmU4MDAyZjhkN2JkMyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.Wujm-1Qga1YoB9rhd3vJJkRRRZT4-vjguYUoOA8ikq4';
  List trendingmovies = [];
  List topratedmovies = [];
  List tv = [];
  List upcomingmovies = [];
  List tvairingtoday = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadmovies();
  }

  loadmovies() async {
    TMDB tmdbWithCustomLogs = TMDB(
      ApiKeys(apikey, readaccesstoken),
      logConfig: ConfigLogger(
        showLogs: true,
        showErrorLogs: true,
      ),
    );
    Map trendingresult = await tmdbWithCustomLogs.v3.trending.getTrending();
    Map topratedresult = await tmdbWithCustomLogs.v3.movies.getTopRated();
    Map tvresult = await tmdbWithCustomLogs.v3.tv.getPouplar();
    Map upcomingresult = await tmdbWithCustomLogs.v3.movies.getUpcoming();
    Map tvairingtodayresult = await tmdbWithCustomLogs.v3.tv.getAiringToday();
    setState(() {
      trendingmovies = trendingresult['results'];
      topratedmovies = topratedresult['results'];
      tv = tvresult['results'];
      upcomingmovies = upcomingresult['results'];
      tvairingtoday = tvairingtodayresult['results'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TV(tv: tv),
        UpcomingsMovies(upcoming: upcomingmovies),
        TrendingMovies(
          trending: trendingmovies,
        ),
        TvAiringToDay(tvairingtoday: tvairingtoday),
        TopRatedMovies(
          toprated: topratedmovies,
        ),
      ],
    );
  }
}
